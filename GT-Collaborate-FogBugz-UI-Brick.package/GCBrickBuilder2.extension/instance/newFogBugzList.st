*GT-Collaborate-FogBugz-UI-Brick
newFogBugzList
	| list existingJournalHolder |
	existingJournalHolder := journalHolder.
	list := GLMFallbackScrollListBrick new.
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
		emptyBrick: (self newLoginBrick 
			book: existingJournalHolder book; yourself);
		onAnnouncement: MorphDeleted 
		do: [ existingJournalHolder unsubscribe: list ].
	^ list