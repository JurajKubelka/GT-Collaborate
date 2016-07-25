running
setUp
	super setUp.
	topic := GCTopic loremIpsum.
	oldText := topic contents text.
	newText := 'new text' asText.
	oldTitle := topic title.
