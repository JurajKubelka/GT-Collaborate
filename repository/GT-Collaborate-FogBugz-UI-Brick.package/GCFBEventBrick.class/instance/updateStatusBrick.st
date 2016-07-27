update
updateStatusBrick
	| newText |
	newText := self event changes ifNil: [ '' ] ifNotNil: #asString.
	newText ifEmpty: [ ^ self ].
	self statusBrick ifNil: [ 
		self statusBrick: self newTextAreaBrick ].
	self statusBrick text: newText.
