private
filterOldCommands
	allCommands do: [ :each | self filterOldCommands: each ].