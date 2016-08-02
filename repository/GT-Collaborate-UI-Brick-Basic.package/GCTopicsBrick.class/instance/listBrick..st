accessing - brick
listBrick: aBrick
	listBrick ifNotNil: [ :anOldBrick | self removeBrick: anOldBrick ].
	listBrick := aBrick.
	listBrick model: (GLMBrickListModel new
		sizeLogic: [ self journalSize ];
		morphAtLogic: [ :index :morph |
			(morph ifNil: [ self newListItemBrick ])
				topicHolder: (self topicHolderAt: index)
				yourself ];
		yourself).
	self theme collaborateWidgetThemer topicListStyleFor: aBrick.
	self addBrickBack: aBrick.
