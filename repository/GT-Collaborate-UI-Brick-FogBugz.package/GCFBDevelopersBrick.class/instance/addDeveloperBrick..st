private - adding
addDeveloperBrick: aDeveloper 
	| brick |
	brick := self newDeveloperBrick.
	brick developer: aDeveloper.
	brick onClicked: [ :anEvent :aBrick | self unmarkDeveloper: aDeveloper ].
	self addBrickBack: brick.