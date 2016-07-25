configuration
defaultToken
	^ (SystemSettingsPersistence default nodeNamed: #'gcFogBugzToken')
			ifNotNil: [ :aNode | aNode storedValue ifNil: [ '' ] ]
			ifNil: [ '' ]