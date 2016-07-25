initialization
initializeActions
	actionBricks := OrderedCollection new.
	self composedBrick 
		addBrickBack: (actionBricks add: (self newActionButton
			hintTitle: 'Inspect';
			hintText: 'selected topic';
			icon: Smalltalk ui icons glamorousInspect;
			action: [ :b | self topicHolder inspect ];
			yourself));
		addBrickBack: (actionBricks add: (self newActionButton
			hintTitle: 'Open';
			hintText: 'in new window';
			icon: Smalltalk ui icons glamorousOpen;
			action: [ :b | self topicHolder asDetailedBrick asBrickedMorph
				extent: 300 @ 400;
				openInWindowLabeled: self topicHolder title  ];
			yourself))