*GT-Collaborate-FogBugz-UI-Brick
newFogBugzList
	| list existingJournalHolder |
	existingJournalHolder := journalHolder.
	list := GLMScrollListBrick new.
	list model: (GLMBrickListModel new
		on: existingJournalHolder;
		morphAtLogic: [ :index :morph | | newBrick |
			newBrick := (morph ifNil: [ self newFogBugzRow ]).
			newBrick topicHolder: (self topicHolderAt: index).
			newBrick ];
		yourself).
	existingJournalHolder 
		subscribe: GCTopicAdded send: #update to: list for: list.
	list 
		onAnnouncement: MorphDeleted 
		do: [ list traceCr. existingJournalHolder unsubscribe: list ].
	^ list