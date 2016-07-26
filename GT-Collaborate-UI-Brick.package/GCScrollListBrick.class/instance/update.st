scrolling
update
	self hasItems ifFalse: [ self addEmptyBrick. ^ self ].
	self removeEmptyBrick.
	super update.