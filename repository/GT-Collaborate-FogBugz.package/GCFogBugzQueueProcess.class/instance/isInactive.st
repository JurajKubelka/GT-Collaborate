testing
isInactive
	^ process
			ifNotNil: [ :aProcess | aProcess isTerminated or: [ aProcess isTerminating ] ]
			ifNil: [ true ]