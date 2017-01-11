tests
testPropose
	state propose: self.
	self assert: newState class equals: self proposedStateClass