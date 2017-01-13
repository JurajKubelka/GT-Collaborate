adding
add: aGCSprintCommand 
	| result |
	result := commands add: aGCSprintCommand.
	trantorNode sync.
	^ result