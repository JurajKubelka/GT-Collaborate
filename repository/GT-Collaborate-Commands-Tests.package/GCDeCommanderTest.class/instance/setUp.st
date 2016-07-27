running
setUp
	super setUp.
	decommander := GCDeCommander new.
	decommander journal: journal.