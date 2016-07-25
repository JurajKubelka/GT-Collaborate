tests
testTopicContentsChanged
	self testBlockingSync.
	firstTopic updateContents: newText.
	self assert: engine isLocalCommandsEmpty.
	commands := engine remoteCommands.
	self assert: commands isCollection.
	self assert: commands size equals: 1.
	command := commands first.
	self assert: command notNil.
	self assert: command class equals: Dictionary.
	self assert: command equals: (Dictionary new 
		at: #action put: 'TopicContentsUpdated';
		at: #contents put: (Dictionary new 
				at: #text put: 'Text{#string:''new text'',#runs:RunArray{#runs:[8],#values:[[]]}}';
				at: #type put: 'Text';
				yourself);
		at: #id put: (command at: #id) asString;
		yourself).