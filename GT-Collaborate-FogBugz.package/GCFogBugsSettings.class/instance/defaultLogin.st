configuration
defaultLogin
	^ (SystemSettingsPersistence default nodeNamed: #'gcFogBugzLogin')
			ifNotNil: [ :aNode | aNode storedValue ifNil: [ '' ] ]
			ifNil: [ '' ]