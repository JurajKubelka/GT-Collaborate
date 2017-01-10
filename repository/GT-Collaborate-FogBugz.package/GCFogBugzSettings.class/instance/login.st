accessing
login
	^ login ifNil: [ self defaultLogin ]