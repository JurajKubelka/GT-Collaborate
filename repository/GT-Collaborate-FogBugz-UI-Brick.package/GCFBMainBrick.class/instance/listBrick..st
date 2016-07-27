accessing - brick
listBrick: aBrick 
	listBrick ifNotNil: [ :anOldBrick | self removeBrick: anOldBrick ].
	listBrick := aBrick.
	self theme collaborateWidgetThemer fogBugzListStyleFor: aBrick.
	aBrick model: (GLMBrickListModel new
		sizeLogic: [ self bookSize ];
		morphAtLogic: [ :index :morph | | newBrick |
			newBrick := (morph ifNil: [ self newRow ]).
			newBrick topicHolder: (self topicHolderAt: index).
			newBrick ];
			yourself).
	isEmptyBrickDisplayed ifFalse: [ self addBrickBack: aBrick ].
