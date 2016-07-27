accessing
contents: anObject
	contents ifNotNil: [ :aContents | aContents unsubscribe: self ].
	contents := anObject.
	anObject subscribe: GCContentsChanged send: #contentsUpdated: to: self for: self