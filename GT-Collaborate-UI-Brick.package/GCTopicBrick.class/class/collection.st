examples
collection
	<gtExample>
	<label: 'Collection of topics'>
	| journal adaptor |
	journal := GCJournal randomLoremIpsum.
	adaptor := GLMBrickListModel new
		on: journal;
		morphAtLogic: [ :index :morph |
			(morph ifNil: [ self new ])
				topicHolder: (journal topicHolderAt: index);
				color: Color random muchLighter;
				yourself ].
	^ GLMScrollListBrick new model: adaptor; yourself