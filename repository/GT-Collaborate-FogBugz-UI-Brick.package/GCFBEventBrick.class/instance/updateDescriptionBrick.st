update
updateDescriptionBrick
	| newText |
	newText := String streamContents: [ :aStream |
		aStream nextPutAll: (self event description ifNil: [ '' ]); nextPutAll: ' at '.
		self event date asLocal printSeparateDateAndTimeOn: aStream ].
	self descriptionBrick ifNil: [
		self descriptionBrick: self newTextAreaBrick ].	
	self descriptionBrick text: newText.