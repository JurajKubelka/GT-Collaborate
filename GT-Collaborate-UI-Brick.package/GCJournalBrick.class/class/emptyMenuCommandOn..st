world menu
emptyMenuCommandOn: aBuilder
	"Add a custom menu item to the world menu"

	<worldMenu>
	(aBuilder item: #'Empty Journal')
		order: 5.0;
		icon: (Smalltalk ui icons iconNamed: #announcement);
		parent: #Collaboration;
		action: [ self exampleOpenEmpty ]