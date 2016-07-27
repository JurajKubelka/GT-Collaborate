tests
testBasic
	self assert: journal engine == commander.
	self assert: commander commands == engine commands.