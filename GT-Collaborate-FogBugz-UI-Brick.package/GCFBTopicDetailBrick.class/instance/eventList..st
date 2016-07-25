accessing - brick
eventList: aBrick
	eventList ifNotNil: [ :oldBrick | self removeBrick: oldBrick ].
	eventList := aBrick.
	eventList model: (GLMBrickListModel new
		sizeLogic: [ self numberOfEvents ];
		morphAtLogic: [ :index :morph | | newBrick |
			newBrick := (morph ifNil: [ self newEventBrick ]).
			newBrick topicHolder: self topicHolder.
			newBrick event: (self eventAt: index).
			newBrick ];
		yourself).
	eventList hSpaceFill; vSpaceFill.
	self addBrickBack: aBrick.