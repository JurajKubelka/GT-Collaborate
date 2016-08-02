private
splitPerTaskAndDeveloperStatus: aCollection 
	| task author status key |
	task := aCollection at: #number.
	author := aCollection at: #author.
	status := aCollection at: #status.
	key := task printString, '_', author, '_', status.
	individuals at: key put: aCollection