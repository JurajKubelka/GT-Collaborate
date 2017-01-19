adding
add: aGCSprintCommand 
	| result |
	result := commands add: aGCSprintCommand.
	self sync.
	^ result