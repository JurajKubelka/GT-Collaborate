receiving
pullChanges
	decommands ifNotNil: [ :aDecommander |
		self remoteCommands do: [ :eachDictionary |
			 aDecommander dictionary: eachDictionary ] ]