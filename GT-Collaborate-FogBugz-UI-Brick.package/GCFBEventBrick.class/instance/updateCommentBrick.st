update
updateCommentBrick
	| newText |
	newText := (self event comment ifNil: [ '' ]) asString.
	newText ifEmpty: [ ^ self ].
	self commentBrick ifNil: [ 
		self commentBrick: self newTextAreaBrick ].
	self commentBrick text: newText.