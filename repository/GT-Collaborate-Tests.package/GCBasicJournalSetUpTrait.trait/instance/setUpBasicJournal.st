running
setUpBasicJournal
	| tempJournal tempTopic |
	tempJournal := GCJournal loremIpsum. 
	tempTopic := tempJournal topicAt: 1.
	self 
		journal: tempJournal
		firstTopic: tempTopic 
		oldText: tempTopic contents text
		newText: 'new text'.