accessing
token
	^ token ifNil: [ self defaultToken ]