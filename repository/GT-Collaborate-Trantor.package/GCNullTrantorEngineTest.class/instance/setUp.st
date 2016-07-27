running
setUp
	super setUp.
	journal := GCJournal loremIpsum.
	engine := GCTrantorEngine new.
	commander := GCCommander new.
	commander commands: engine commands.
	decommander := GCDeCommander new.
	decommander journal: journal.
	engine decommands: decommander.
	journal engine: commander.
	self setUpTrantor.
	engine trantor: trantor.
	firstTopic := journal topicAt: 1.
	oldText := firstTopic contents text.
	newText := 'new text' asText.
