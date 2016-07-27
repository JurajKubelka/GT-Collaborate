examples
emptyCollection
	<gtExample>
	| adaptor collection list actionBlock |
	adaptor := nil.
	collection := OrderedCollection new.
	adaptor := GLMBrickListModel new
		on: collection;
		morphAtLogic: [ :index :morph | 
			(morph ifNil: [ GLMLabelBrick new ])
				color: Color random muchLighter;
				text: index asString, ' of ', adaptor count asString;
				height: 30;
				textPosition: #center;
				hSpaceFill;
				yourself ].

	list := self new.
	actionBlock := [ collection addAll: (1 to: 20). list update ].

	^ list
			emptyBrick: (self newEmptyBrick: actionBlock);
			model: adaptor;
			yourself