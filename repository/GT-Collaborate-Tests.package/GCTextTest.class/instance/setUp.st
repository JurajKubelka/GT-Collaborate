running
setUp
	super setUp.
	text := GCText loremIpsum.
	oldText := text text.
	newText := 'new text' asText.