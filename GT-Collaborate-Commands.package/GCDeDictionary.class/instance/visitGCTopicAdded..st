visitor
visitGCTopicAdded: aGCTopicAdded 
	| topic |
	topic := GCTopic new.
	(dictionary at: #title) ifNotNil: [ :aText | topic title: aText ].
	(dictionary at: #time) ifNotNil: [ :aTime | topic time: aTime ].
	(dictionary at: #id) ifNotNil: [ :aTime | topic id: aTime ].
	(dictionary at: #contents) ifNotNil: [ :aDictionary | 
		topic contents: (self class new journal: journal; dictionary: aDictionary; contents) ].
	journal addTopic: topic.