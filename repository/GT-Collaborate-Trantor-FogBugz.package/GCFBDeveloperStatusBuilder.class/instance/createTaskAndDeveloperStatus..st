private
createTaskAndDeveloperStatus: aCollection 
	^ (GCFBDeveloperStatusCommand command: (aCollection at: #action))
		status: ((GCDeveloperStatus status: (aCollection at: #status))
			author: (aCollection at: #author);
			date: (aCollection at: #date);
			yourself);
		topicNumber: (aCollection at: #number)