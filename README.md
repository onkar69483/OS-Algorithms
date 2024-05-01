# OS-Algorithms

Unit 3
1. Priority Inversion
2. Startvation
3. Convoy Effect
4. Fetch, Decode, Calculate, Fetch, Execute, Write
#Pipeline Hazard (Pipeline Bubble)
	Resource Hazard-occurs due to resource sharing concurrently(Structural Hazard)
	Data Hazard-conflict in access of operand location
		RAW(True), WAR(Anti), WAW(Output)
	Control Hazard(Branch Hazard)-when pipeline makes wrong decision on a branch prediction.
	
Multiprogramming
Multiprocessing
Distributed processing-“cluster” refers to the connection of computers or servers to each other over a network to form a larger “computer”

concurrency-issues
communication
allocation of processor time to processes
synchronization of activities
sharing of resources

IMP terms
1. Atomic Operation (guarantees isolation)
2. Critical Section
3. Deadlock  }	v
4. Live lock } Lead to Starvation but reverse is not possible
5. Mutual exclusion
6. Race Condition
7. Starvation

#Principles of concurrency
1. Interleaving(single processor system)
2. Overlapping(multiprocessor system)

#Process Interaction
1. Competition(me, dl, st)
2. Cooperation by sharing(me,dl,st, data coherence)
3. Cooperation by communication(dl, st)

#Solution of critical section problem
1. Lock variable
Lock=0 -> Critical section vacant
Lock=1 -> Critical section occupied

test&set -> solution of lock var

2. Interrupt disabling
Machine Instruction approach
Compare and swap(*word, testval, newval)
exchange(*register, *memory)
busy waiting or spin waiting

3. Common concurrency mechanism

