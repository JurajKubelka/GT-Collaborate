examples
journalWithTrantorEngine
	| journal trantor engine commander decommander |
	self uniqueInstance start.
	journal := GCJournal empty.
	trantor := GCTrantorNode new.
	trantor node connectTo: NetNameResolver loopBackAddress port: self port.
	engine := GCTrantorEngine new trantor: trantor; yourself.
	commander := GCCommander new commands: engine commands; nextPutMessage: #addCommand:; yourself.
	decommander := GCDeCommander new journal: journal.
	engine decommands: decommander.
	journal engine: commander.
	^ journal