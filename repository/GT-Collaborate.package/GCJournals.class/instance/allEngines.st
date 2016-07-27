configuration
allEngines
	^ self allEnginePragmas collect: [ :aPragma | 
		self perform: aPragma methodSelector ]