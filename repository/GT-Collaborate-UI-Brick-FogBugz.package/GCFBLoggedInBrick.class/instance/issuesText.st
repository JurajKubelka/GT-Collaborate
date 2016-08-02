accessing
issuesText
	^ self bookSize isZero
		ifTrue: [ self noIssuesText ]
		ifFalse: [ self someIssuesText ]