world menu
menuCommandDefaultJournalsOn: aBuilder
	"Add a custom menu item to the world menu"

	<worldMenu>
	(aBuilder item: #'Your Journal')
		order: 0.1;
		icon: (Smalltalk ui icons iconNamed: #announcement);
		parent: #Collaboration;
		action: [ self openDefault ];
		withSeparatorAfter 