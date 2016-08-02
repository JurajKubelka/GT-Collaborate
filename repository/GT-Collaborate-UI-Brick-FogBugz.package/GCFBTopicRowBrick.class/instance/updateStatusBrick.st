update
updateStatusBrick
	statusBrick ifNotNil: [ :aBrick | aBrick text: self topicHolder status ].