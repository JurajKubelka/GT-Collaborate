build ui
buildUIFor: aGLMTabulator sprint: aSprint
	aGLMTabulator column: #proposed; column: #taken; column: #done.
	aGLMTabulator transmit to: #proposed; andShow: [ :composite | 
		self proposedList: composite.
		self allList: composite.
	].
	self takenList: aGLMTabulator.
	self doneList: aGLMTabulator.
	aSprint announcer
		when: GCSprintLocalCaseStateChanged, GCFogBugzCasesUpdated 
		send: #update
		to: aGLMTabulator.
	^ aGLMTabulator