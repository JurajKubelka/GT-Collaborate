world menu
menuCollaborationCommandOn: aBuilder
	<worldMenu>
	(aBuilder item: #Collaboration)
		order: 1.1;
		target: self;
		icon: (Smalltalk ui icons iconNamed: #announcement). 