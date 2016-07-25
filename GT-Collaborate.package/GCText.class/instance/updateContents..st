udpate
updateContents: aText
	| previousValue |
	self text = aText ifTrue: [ ^ self ].
	previousValue := self text.
	self text: aText.
	self announce: (GCContentsChanged new previousValue: previousValue; actualValue: self text; yourself)