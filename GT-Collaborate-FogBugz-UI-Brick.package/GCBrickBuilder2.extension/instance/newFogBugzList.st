*GT-Collaborate-FogBugz-UI-Brick
newFogBugzList
	| list existingJournalHolder |
	existingJournalHolder := journalHolder.
	list := GLMFallbackScrollListBrick new.
	list
		emptyBrick: (self newLoginBrick 
			book: existingJournalHolder book; yourself).
	list model: (GLMBrickListModel new
		on: existingJournalHolder;
		morphAtLogic: [ :index :morph | | newBrick |
			newBrick := (morph ifNil: [ self newFogBugzRow ]).
			newBrick topicHolder: (self topicHolderAt: index).
			newBrick ];
			yourself).
	existingJournalHolder inspect
		subscribe: GCTopicAdded send: #update to: list for: list;
		subscribe: GCFBUpdateFinished send: #invalidate to: list for: list;
		when: GCFBUpdateFinished do: [ self traceCr: 'trigger update list' ] for: list;
		yourself.
	list 
		onAnnouncement: MorphDeleted 
		do: [ existingJournalHolder unsubscribe: list ].
	^ list