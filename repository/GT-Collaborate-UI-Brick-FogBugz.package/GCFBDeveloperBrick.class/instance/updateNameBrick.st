update
updateNameBrick
	nameBrick ifNotNil: [ :aBrick | 
		aBrick text: self developer author.
		self developer accept: self.
	]