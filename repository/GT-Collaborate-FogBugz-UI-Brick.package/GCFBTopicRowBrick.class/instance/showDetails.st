update
showDetails
	| newBounds referentBrick newBrick |
	self isSelected ifFalse: [ ^ self ].
	detailWindow ifNotNil: #delete.
	referentBrick := self owner ifNotNil: [ :ownerBrick | ownerBrick owner 
		ifNil: ownerBrick ifNotNil: #owner ].
	newBounds := referentBrick 
		ifNil: [ (self boundsInWorld origin + (self width @ 0)) extent: 300 @ 400 ]
		ifNotNil: [ :ownerBrick | ownerBrick boundsInWorld origin + (ownerBrick width @ 0)
			extent: 300 @ ownerBrick height ].
	newBrick := self topicHolder asDetailedBrick.
	detailWindow := newBrick asBrickedMorph 
		color: Color blue;
		bounds: newBounds; 
		openInWorld.
	newBrick mouseLeaveAction: [ :evt :brick | detailWindow delete ]