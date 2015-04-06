/// \file semaphores.c
/// \brief Semaphore implementation according to CMSIS interfaces
/// \details Defines a semaphore and semaphore creation and attributes manipulation

#include "RavenOS.h" 
#include <stdlib.h>
#include "kernel.h"

//  ==== Semaphore Management Functions ====

// ******* Persistant data for managing semaphores  *******
// semaphores managed in a list; sem_cnt = number of semaphores in list 
osSemaphoreId sem_list_h = NULL;                 ///< pointer to head of semaphore list, initially empty
uint32_t sem_cnt = 0;                 ///< Semaphore counter
osSemaphoreId ResourceHead=NULL;
extern int getCurrentCeiling();
osPriority resumePriority(osSemaphoreId semaphore_id,osThreadId thread);
osThreadId osThreadGetList();
// Prototypes
osStatus os_RemoveThreadFromSemaphoreBlockedQ (osThreadId thread_id, osSemaphoreId semaphore_id);
osStatus os_InsertThreadInSemaphoreBlockedQ (osThreadId thread_id, osSemaphoreId semaphore_id, uint32_t expiryTime, uint32_t ticks);
uint32_t os_SearchThreadInSemaphoreBlockedQ (osThreadId thread_id, osSemaphoreId semaphore_id);
osStatus os_SearchThreadAllSemaphoresBlockedQ (osThreadId thread_id, osSemaphoreId* semaphore_id_p, uint32_t* semaphore_p_p );
osThreadId ReleaseThread();
int getCurrentCeiling()
{
	if(ResourceHead)
	{
		return ResourceHead->ceiling;
	}
	else return -3;
	
}

// Semaphore blocked queue support functions

// used only for debugging
void blockedWalk( osSemaphoreId semaphore_id )
{
	// a debugging function ... only called to validate blocked contents using debugger
	// walk the blocked queue exposing contents
	os_tcb_p *checkHere;  // pointer to a blockedQ pointer/index
	for ( checkHere = &( semaphore_id->blocked_q_h ); *checkHere != NULL; checkHere = &( (*checkHere)->blocked_q_p ) ) 
	{
		if( *checkHere != NULL )
		{
			continue;
		}
		
	}
}

/// Priority insert thread into Blocked Q
/// \param[in]     th_p    pointer to thread tcb 
/// \return        none
/// \note inserts thread before any lower or equal priority threads
void osInsertBlockedQ( osSemaphoreId semaphore_id, os_tcb_p th_p )
{
	os_tcb_p *checkHere;  // pointer to a pointer/index
	// walk the blocked Q looking for the pointer to modify
	for ( checkHere = &( semaphore_id->blocked_q_h ); *checkHere != NULL; checkHere = &( (*checkHere)->blocked_q_p ) ) 
	{
		if ( (*checkHere)->priority <= th_p->priority )
		{
			// found pointer to modify!
			break;
		}
	}
	// checkHere points to the pointer to be modified
	// save link to rest of list
	th_p->blocked_q_p = *checkHere;
	// insert the new thread here
	*checkHere = th_p;
	// increm,ent number of threads in blocked Q
	semaphore_id->blocked_q_cnt++;
	// uncomment to invoke      blockedWalk( semaphore_id );  // just for debug
}

/// Remove thread from blocked Q. If thread not in blocked Q ... does not change Q.
/// \param[in]     th    pointer to thread tcb
/// \return        none
void osRemoveBlockedQ( osSemaphoreId semaphore_id, os_tcb_p th_p )
{
		os_tcb_p *checkHere;  // pointer to a RTRQ pointer/index
	// walk the blocked Q looking for the pointer to modify
	for ( checkHere = &( semaphore_id->blocked_q_h ); *checkHere != NULL; checkHere = &( (*checkHere)->blocked_q_p ) ) 
	{
		if ( *checkHere == th_p )
		{
			// found RTRQ pointer to modify!
			break;
		}
	}
	// checkHere points to the pointer/index to be modified, or th was not in Q
	if ( *checkHere != NULL )   // only remove if th is in list
	{
		// save link to rest of list
		*checkHere = th_p->blocked_q_p;
		// decrement count of threads in Q
		semaphore_id->blocked_q_cnt--;
		th_p->semaphore_id=NULL;
	}
	// uncomment to invoke      blockedWalk( semaphore_id );  // just for debug
}

/// Remove thread from head of blocked Q. If no thread in blocked Q ... does not change Q.
/// \param[in]     semaphore_id  get thread from this semaphore
/// \return        th_p pointer to removed thread tcb (NULL if no thread removed)
osThreadId osRemoveFromHeadOfBlockedQ( osSemaphoreId semaphore_id )
{
	osThreadId temp;
	// make sure there is something to remove
	if ( semaphore_id->blocked_q_h == NULL )
	{
		return ( NULL );
	}
	
	// save (index) id of thread being removed
	temp = semaphore_id->blocked_q_h;	
	// save link to rest of q
  semaphore_id->blocked_q_h = temp->blocked_q_p;
  // clear link in removed thread ... just to be safe
	temp->blocked_q_p = NULL;
	temp->semaphore_id= NULL;
	// decrement number of threads in Q
	semaphore_id->blocked_q_cnt--;
	
	// uncomment to invoke      blockedWalk( semaphore_id );  // just for debug
	
	return( temp );
}



/// Create and Initialize a Semaphore object used for managing resources.
/// \param[in]     semaphore_def semaphore definition referenced with \ref osSemaphore.
/// \param[in]     count         number of available resources.
/// \return semaphore ID for reference by other functions or NULL in case of error.
/// \note MUST REMAIN UNCHANGED: \b osSemaphoreCreate shall be consistent in every CMSIS-RTOS.
/// \note: RavenOS using def struct as scb ... removed "const" from input param
osSemaphoreId osSemaphoreCreate ( osSemaphoreDef_t *semaphore_def, int32_t count,osPriority ceiling)
	{  //TWPV4: major change: def struct replaces previous scb struct

  // initialize semaphore's internal variables	
	semaphore_def->blocked_q_h = NULL;
	semaphore_def->blocked_q_cnt = 0;
	semaphore_def->resource=NULL;
	semaphore_def->ownCount = count;
	semaphore_def->ceiling=ceiling;	
	// add semaphore to semaphore list  ... placed at head (easy)
	semaphore_def->next = sem_list_h;
  sem_list_h = semaphore_def;		
	sem_cnt++;

	return semaphore_def;
	}
int32_t Resource_Search(osSemaphoreId semaphore_id)// to see if the semaphore is already in the list
{                                                  
	osSemaphoreId temp=NULL;
	if(ResourceHead==NULL) return 0;
	for(temp=ResourceHead;temp!=NULL;temp=temp->resource)
	{
		if(temp==semaphore_id)
		{
			return (1);
		}		
	}
	return (0);
}
	
int32_t Resource_Insert(osSemaphoreId semaphore_id)
{
	osSemaphoreId temp=NULL;
	if(Resource_Search(semaphore_id)){return (0);};// should not return 0 if it works normally.
	if(ResourceHead)		
	{
		
		if(semaphore_id->ceiling>=(ResourceHead)->ceiling)
		{
			semaphore_id->resource=ResourceHead;
			ResourceHead=semaphore_id;			
		}
		else{		
				for(temp=ResourceHead;temp->resource!=NULL;temp=temp->resource)
					{
						if(semaphore_id->ceiling>=temp->resource->ceiling)
							{
								semaphore_id->resource=temp->resource;								
								break;
							}			
					}
				temp->resource=semaphore_id;		
				}
}
	else
	{
		ResourceHead = semaphore_id;				
		(ResourceHead)->resource = NULL;
	//	printf("%d and %d\n\r",semaphore_id->ceiling,(*ResourceHead)->ceiling);
	}	
	return (1); 
}
int32_t Resource_Delete(osSemaphoreId semaphore_id)
{
	osSemaphoreId temp;
	if(!Resource_Search(semaphore_id)) {return (0);};// should not happen if it works normally.
	if(semaphore_id==(ResourceHead))
	{
		if(semaphore_id->resource)
		{ResourceHead= (semaphore_id->resource);}else{ResourceHead = NULL;}
		semaphore_id->resource=NULL;
	}
	else
	{
	for(temp=ResourceHead;temp->resource!=NULL;temp=temp->resource)
	{
		if(temp->resource==semaphore_id)
		{
			if(semaphore_id->resource!=NULL)
			{
				temp->resource=semaphore_id->resource;
				
			}
			else{
				temp->resource=NULL;
			}	
			semaphore_id->resource=NULL;
			break;
	  }
	}
	}return (1); 
}
int32_t ThreadUsingSemaphores_Insert(osSemaphoreId semaphore_id,osThreadId curr_th)
{
	osSemaphoreId temp;
	if(!curr_th->usingSemaphore)
	{
		curr_th->usingSemaphore=semaphore_id;
	}
	else{
				if(curr_th->usingSemaphore->ceiling<semaphore_id->ceiling )
				{
					semaphore_id->in_access=curr_th->usingSemaphore;
					curr_th->usingSemaphore=semaphore_id;
				}
				else
				{
					for(temp=curr_th->usingSemaphore;temp->in_access!=NULL;temp=temp->in_access)
					{
						if(temp->in_access->ceiling<semaphore_id->ceiling)
						{
							 semaphore_id->in_access=temp->in_access;
							 break;
						}					
					}
					temp->in_access=semaphore_id;
				}
			}
	return (1);
}
int32_t ThreadUsingSemaphores_Delete(osSemaphoreId semaphore_id,osThreadId curr_th)
{
	osSemaphoreId temp;
	if(semaphore_id==curr_th->usingSemaphore)
	{
		if(curr_th->usingSemaphore->in_access)
		{
			curr_th->usingSemaphore=curr_th->usingSemaphore->in_access;
		}else{curr_th->usingSemaphore=NULL;}
		semaphore_id->in_access=NULL;
		return 1;
	}
	else
	{
		for(temp=curr_th->usingSemaphore;temp!=NULL;temp=temp->in_access)
		{
			if(semaphore_id==temp->in_access)
			{
				if(temp->in_access->in_access)
				{
					temp->in_access=temp->in_access->in_access;					
				}else
				{
					temp->in_access=NULL;					
				}
				semaphore_id->in_access=NULL;
				return 1;
			}						
		}					
	}
	return 0;
}


int32_t osPcpSemaphoreWait (osSemaphoreId semaphore_id, uint32_t millisec)
{	
	uint64_t microsec = ((uint64_t) millisec) * 1000;
	uint32_t ticks = 0, wait = 0;
	osThreadId curr_th = osThreadGetId();	
	// semaphore does not exist
	if ( semaphore_id == NULL )
	{
		return (-1);
	}	
	if ( millisec != osWaitForever )
	{
		return (-1);			
	}
	if(semaphore_id->ownCount>0)
	{
			if(ResourceHead)
			{ // there is already a ceiling in the kernel.		
				if(curr_th->priority > (ResourceHead)->ceiling ||((curr_th->usingSemaphore)&&((ResourceHead)->ceiling == curr_th->usingSemaphore->ceiling)) )
				{
					// not be blocked by the ceiling					
					Resource_Insert(semaphore_id);
					semaphore_id->current_used_by=curr_th;
					
					if(!curr_th->usingSemaphore)
					{curr_th->opriority=curr_th->priority;}
					ThreadUsingSemaphores_Insert(semaphore_id,curr_th);
					//recordPriorityBeforeInheritance(semaphore_id,curr_th);
					semaphore_id->ownCount=semaphore_id->ownCount-1;
					return(1);
									
				}
				else{
							//blocked by the ceiling
							if((ResourceHead)->current_used_by->priority<curr_th->priority)
							{// priority inheritence
							(ResourceHead)->current_used_by->priority=curr_th->priority;										
										osRemoveRTRQ( (ResourceHead)->current_used_by );
										osInsertRTRQ( (ResourceHead)->current_used_by );
							}
							curr_th->status = TH_BLOCKED;
							osRemoveRTRQ( curr_task );
							if (os_InsertThreadInSemaphoreBlockedQ(curr_th, semaphore_id, osWaitForever, osWaitForever) != osOK)
							{
									return (-1); // something went wrong and cannot block on this semaphore   TWP :-(   whaaatt?
							}
							os_KernelInvokeScheduler ();	
							// resume from being blocked;semaphore_id->ownCound should be 1 here!!!
							Resource_Insert(semaphore_id);
							semaphore_id->current_used_by=curr_th;
							if(!curr_th->usingSemaphore)
								{curr_th->opriority=curr_th->priority;}
							ThreadUsingSemaphores_Insert(semaphore_id,curr_th);
							//recordPriorityBeforeInheritance(semaphore_id,curr_th);
							semaphore_id->ownCount=semaphore_id->ownCount-1;
							return(1);
						}			
			}
			else
			{// no ceiling in the kernel, get the semaphore and set the ceiling.
					
					Resource_Insert(semaphore_id);										
					semaphore_id->current_used_by=curr_th;
					if(!curr_th->usingSemaphore)
					{curr_th->opriority=curr_th->priority;}
					ThreadUsingSemaphores_Insert(semaphore_id,curr_th);
					//recordPriorityBeforeInheritance(semaphore_id,curr_th);
					semaphore_id->ownCount=semaphore_id->ownCount-1;
					return(1);		
			}		
	}
	else
	{// count=0; get blocked;
		if(semaphore_id->current_used_by->priority<curr_th->priority)
		{// priority inheritance 
			semaphore_id->current_used_by->priority=curr_th->priority;
			osRemoveRTRQ( semaphore_id->current_used_by );
			osInsertRTRQ( semaphore_id->current_used_by);
		}
		curr_th->status = TH_BLOCKED;
		osRemoveRTRQ( curr_task );
		if (os_InsertThreadInSemaphoreBlockedQ(curr_th, semaphore_id, osWaitForever, osWaitForever) != osOK)
			{
				return (-1); // something went wrong and cannot block on this semaphore   TWP :-(   whaaatt?
			}
			os_KernelInvokeScheduler ();	
			// resume from being blocked;semaphore_id->ownCound should be 1 here!!!
			Resource_Insert(semaphore_id);
			semaphore_id->current_used_by=curr_th;
			if(!curr_th->usingSemaphore)
				{curr_th->opriority=curr_th->priority;}
			ThreadUsingSemaphores_Insert(semaphore_id,curr_th);
			//recordPriorityBeforeInheritance(semaphore_id,curr_th);
			semaphore_id->ownCount=semaphore_id->ownCount-1;
			return(1);		
	}
}

/// Wait until a Semaphore token becomes available.
/// \param[in]     semaphore_id  semaphore object referenced with \ref osSemaphoreCreate.
/// \param[in]     millisec      timeout value or 0 in case of not willing to wait.
/// \return number of available tokens, or -1 in case of incorrect parameters.
/// \note MUST REMAIN UNCHANGED: \b osSemaphoreWait shall be consistent in every CMSIS-RTOS.
osStatus osPcpSemaphoreRelease (osSemaphoreId semaphore_id)
{
	osThreadId th_p;    // used if releasing a thread
	osThreadId curr_th = osThreadGetId();
	if ( semaphore_id == NULL )
	{ // semaphore does not exist
		return osErrorParameter;
	}
	semaphore_id->ownCount=1;  // set semaphore's current ownCount to 1;
	semaphore_id->current_used_by=NULL;
	Resource_Delete(semaphore_id);	
	ThreadUsingSemaphores_Delete(semaphore_id,curr_th);
	if(semaphore_id->ceiling>=curr_th->priority)
	{
	curr_th->priority=resumePriority(semaphore_id,curr_th);
	}
	osRemoveRTRQ( curr_th );
	osInsertRTRQ( curr_th );
	th_p=ReleaseThread();
	if(th_p)
	{
		osRemoveBlockedQ( th_p->semaphore_id, th_p );
		th_p->status=TH_RUNNING;
		osInsertRTRQ(th_p);
	}
	os_KernelInvokeScheduler ();
	return osOK;
}	
osThreadId ReleaseThread()
{
	osThreadId p;
	osThreadId next=NULL;	
	for(p=osThreadGetList();p!=NULL;p=p->th_list_p)
		{
			if(p->status==TH_BLOCKED && p->semaphore_id && p->semaphore_id->current_used_by==NULL )
			{
				if(!next || (next && p->priority>next->priority))
				{
					next=p;
				}
		  }
	  }
		if(next)return next;
		else return NULL;
}
osPriority resumePriority(osSemaphoreId semaphore_id,osThreadId curr_th)
{
	osPriority hgst=-100;
	osSemaphoreId SemTemp;
	osThreadId ThTemp;
	
	if(!curr_th->usingSemaphore) return curr_th->opriority;
		else{
					for(SemTemp=curr_th->usingSemaphore;SemTemp!=NULL;SemTemp=SemTemp->in_access)
					{
						for(ThTemp = SemTemp->blocked_q_h;ThTemp!=NULL;ThTemp=ThTemp->blocked_q_p)
						{
							if(hgst<ThTemp->priority){hgst=ThTemp->priority;}
							
						}
					
					}	
						if(hgst<curr_th->opriority) return curr_th->opriority;
							else return hgst;
				}
	
}

int32_t osSemaphoreWait (osSemaphoreId semaphore_id, uint32_t millisec)
{	
	uint64_t microsec = ((uint64_t) millisec) * 1000;
	uint32_t ticks = 0, wait = 0;
	osThreadId curr_th = osThreadGetId();	
	// semaphore does not exist
	if ( semaphore_id == NULL )
	{
		return (-1);
	}	

		// timed waiting not supported in this version
	if ( millisec != osWaitForever )
	{
		return (-1);			
	}
	
	if ( --( semaphore_id->ownCount ) >= 0 )
	{
		// semaphore is free -> take semaphore
		// TWP the returned value is not really reliable by the time the released thread runs
		return (semaphore_id->ownCount);
	}	
	
	// timed waiting not supported in this version
  if ( millisec == 0 )
	{
		// all tokens taken for this semaphore, but can't wait, so return unsuccessful
		return (-1);			
	}

	// if still here, then semaphore locked ... need to block calling thread!
	// add thread to the semaphore queue, mark thread as blocked and invoke scheduler  
	
	// set thread to blocked state and manipulate RTRQ and blocked Q before yield
	curr_th->status = TH_BLOCKED;
	// remove from RTRQ
	osRemoveRTRQ( curr_task );
	// put in blocked Q
	if (osWaitForever == millisec)
	{			
		if (os_InsertThreadInSemaphoreBlockedQ(curr_th, semaphore_id, osWaitForever, osWaitForever) != osOK)
		{
			return (-1); // something went wrong and cannot block on this semaphore   TWP :-(   whaaatt?
		}			
	}
	else   	// timed waiting not supported in this version
	{
		ticks = (uint32_t) osKernelSysTickMicroSec(microsec);
		wait = ticks + osKernelSysTick();
		if (os_InsertThreadInSemaphoreBlockedQ(curr_th, semaphore_id, wait, ticks) != osOK)
		{
			return (-1); // something went wrong and cannot block on this semaphore   TWP :-(   whaaatt?   
		}	
	}			
	
	//have modified RTRQ and semaphore blocked Q
	// curr_task is no longer at head of RTRQ ... invoke scheduler to do context switch
	os_KernelInvokeScheduler ();						

	// will eventually resume here when thread released from semaphore ...
	
	if ( semaphore_id->ownCount  < 0 )
	{
     return (0);
	}
	else
	{
		  return ( semaphore_id->ownCount );
	}
	
}


/// Release a Semaphore token.
/// \param[in]     semaphore_id  semaphore object referenced with \ref osSemaphoreCreate.
/// \return status code that indicates the execution status of the function.
/// \note MUST REMAIN UNCHANGED: \b osSemaphoreRelease shall be consistent in every CMSIS-RTOS.
osStatus osSemaphoreRelease (osSemaphoreId semaphore_id)
{
	osThreadId th_p;    // used if releasing a thread
	
	if ( semaphore_id == NULL )
	{ // semaphore does not exist
		return osErrorParameter;
	}

	semaphore_id->ownCount++;  // increment semaphore's current ownCount
	
	// any threads blocked on semaphore?
	if (semaphore_id->blocked_q_cnt == 0)    	
	{
		// EASY case:  no threads blocked on this semaphore
		return osOK;
	}
	
	// unblock the thread with highest priority waiting in the semaphore queue
	th_p = osRemoveFromHeadOfBlockedQ( semaphore_id );
	
	// change state to RUNNING
	//TWPV6: removed TH_READY state ... only using TH_RUNNING 
	th_p->status = TH_RUNNING;
	
	// put the thread in the RTRQ
	osInsertRTRQ( th_p  );
	
	// RTRQ has changed - invoke scheduler for context switch if necessary
	os_KernelInvokeScheduler ();					

	return osOK;
}


// Semaphore deletion is not supported in this version
/// Delete a Semaphore that was created by \ref osSemaphoreCreate.
/// \param[in]     semaphore_id  semaphore object referenced with \ref osSemaphoreCreate.
/// \return status code that indicates the execution status of the function.
/// \note MUST REMAIN UNCHANGED: \b osSemaphoreDelete shall be consistent in every CMSIS-RTOS.
osStatus osSemaphoreDelete (osSemaphoreId semaphore_id)
{
	/*  functionality not supported in this version 
	
	*/
	return osOK;
}


/// Insert thread in the blocked semaphore queue.
/// \param     thread_id  thread object. <-- this ins't needed ... could just use curr_task
/// \param     semaphore_id  semaphore object
/// \param     expiryTime to  give up waiting on semaphore
/// \param     ticks to spend on semaphore
/// \return status code that indicates the execution status of the function.
osStatus os_InsertThreadInSemaphoreBlockedQ (osThreadId thread_id, osSemaphoreId semaphore_id, uint32_t expiryTime, uint32_t ticks)
{
	if ( thread_id == NULL)
	{
		return osErrorParameter;
	}
	if (semaphore_id == NULL)
	{
		return osErrorParameter;
	}		
	
	thread_id->semaphore_id = semaphore_id;
	
	osInsertBlockedQ( semaphore_id, thread_id );
	
	return osOK;
}

//TWPV2 this next function should be no longer needed
/// Remove thread from a blocked semaphore queue.
/// \param     thread_id  thread object.
/// \param     semaphore_id  semaphore object.
/// \return the index within the semaphore queue; MAX_THREADS_SEM is not found or error
uint32_t os_SearchThreadInSemaphoreBlockedQ (osThreadId thread_id, osSemaphoreId semaphore_id)
{
	/*  functionality no longer used ... code removed due to significant changes
	*/
	return 0;    // just a dummy return value for now
}


//TWPV2 this next function should be no longer needed
/// Search for the thread in all blocked semaphore queue.
/// \param     thread_id  thread object.
/// \param     semaphore_id_p  pointer to semaphore object for returning
/// \param     semaphore_p_p  pointer to index to semaphore object for returning
/// \return index withing one of the semaphores the thread is blocked; 
///   - MAX_THREADS_SEM if not found or error
osStatus os_SearchThreadAllSemaphoresBlockedQ (osThreadId thread_id, osSemaphoreId* semaphore_id_p, uint32_t* semaphore_p_p )
{
	/*  functionality no longer used ... code removed due to significant changes
	*/
	return osOK;
}
