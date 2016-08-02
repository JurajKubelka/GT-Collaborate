scrolling
update
	self hasItems 
		ifFalse: [ 
			self addEmptyBrick.
			self isTopOverscrolled ifTrue: [ self moveBandTop ]. 
			self updateBandHeight ]
		ifTrue: [ 
			self removeEmptyBrick. super update ].