enumerating
select: aBlockClosure 
	^ mutex critical: [ 
		collection select: aBlockClosure ]