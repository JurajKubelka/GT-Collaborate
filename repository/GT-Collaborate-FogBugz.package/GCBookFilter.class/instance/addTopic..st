adding
addTopic: aTopic
	^ mutex critical: [ self topics addLast: aTopic ]