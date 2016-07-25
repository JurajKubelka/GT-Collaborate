ui
askOnce
	(self login isEmpty or: [ self password isEmpty ])
		ifTrue: [ self ask ].