build ui
buildUIFor: aGLMTabulator
	aGLMTabulator column: #proposed; column: #taken; column: #done.
	aGLMTabulator transmit to: #proposed; andShow: [ :composite | 
		self proposedList: composite.
		self allList: composite.
	].
	self takenList: aGLMTabulator.
	self doneList: aGLMTabulator.
	^ aGLMTabulator