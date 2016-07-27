configuration
allAvailableBooks
	^ self allAvailableBookPragmas collect: [ :aPragma | 
		self perform: aPragma methodSelector ]