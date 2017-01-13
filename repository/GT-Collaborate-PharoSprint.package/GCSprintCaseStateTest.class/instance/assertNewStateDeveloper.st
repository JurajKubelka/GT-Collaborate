asserting
assertNewStateDeveloper
	newState ifNotNil: [ 
		self assert: newState developer equals: developer ].