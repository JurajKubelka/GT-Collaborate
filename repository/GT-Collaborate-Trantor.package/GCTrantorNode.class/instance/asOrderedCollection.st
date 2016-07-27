converting
asOrderedCollection
	^ remoteObject ifNil: [ OrderedCollection new ] ifNotNil: #asOrderedCollection