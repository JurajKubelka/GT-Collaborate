private - adding
addDeveloperBricks
	self developers
		do: [ :eachDeveloper | self addDeveloperBrick: eachDeveloper ]