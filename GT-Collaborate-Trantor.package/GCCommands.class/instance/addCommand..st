adding
addCommand: aGCCommand 
	| result |
	result := commands nextPut: aGCCommand.
	self engine commandAdded: self.
	^ result.