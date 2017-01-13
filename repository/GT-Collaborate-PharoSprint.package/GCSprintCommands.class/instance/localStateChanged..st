accessing
localStateChanged: aGCSprintCaseStateChanged 
	self add: (GCSprintCaseStateChangeCommand new
		caseId: aGCSprintCaseStateChanged caseId;
		stateId: aGCSprintCaseStateChanged stateId;
		developerId: aGCSprintCaseStateChanged developerId;
		yourself)