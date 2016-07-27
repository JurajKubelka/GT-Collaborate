update
updateIssueBrick
	caseBrick ifNotNil: [ :aBrick | aBrick case: self topicHolder ].