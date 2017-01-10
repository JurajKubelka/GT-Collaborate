testing
isLoggedIn
	^ tracker ifNotNil: #isLoggedIn ifNil: [ false ]