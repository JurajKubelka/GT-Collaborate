visitor
visitTopicContentsUpdated: aGCTopicContentsUpdated 
	| contents |
	contents := (dictionary at: #contents) ifNotNil: [ :aDictionary | 
		(self class new journal: journal; dictionary: aDictionary; contents) ].
	(journal topicId: (dictionary at: #id))
		contents text: contents text