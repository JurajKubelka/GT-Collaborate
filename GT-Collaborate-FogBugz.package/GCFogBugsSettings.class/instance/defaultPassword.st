configuration
defaultPassword
	^ (SystemSettingsPersistence default nodeNamed: #'gcFogBugzPassword')
			ifNotNil: [ :aNode | aNode storedValue ifNil: [ '' ] ]
			ifNil: [ '' ]