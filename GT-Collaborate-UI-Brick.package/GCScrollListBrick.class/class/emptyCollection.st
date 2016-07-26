examples
emptyCollection
	<gtExample>
	|adaptor|
	adaptor := nil.
	adaptor := GLMBrickListModel new
		sizeLogic: [ 0 ];
		morphAtLogic: [ :index :morph | 
			(morph ifNil: [ GLMLabelBrick new ])
				color: Color random muchLighter;
				text: index asString, ' of ', adaptor count asString;
				height: 30;
				textPosition: #center;
				hSpaceFill;
				yourself ].

	^ self new 
			emptyBrick: self newEmptyBrick;
			model: adaptor;
			yourself