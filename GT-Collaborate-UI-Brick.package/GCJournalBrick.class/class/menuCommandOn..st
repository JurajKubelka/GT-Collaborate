world menu
menuCommandOn: aBuilder
	"Add a custom menu item to the world menu"

	<worldMenu>
	(aBuilder item: #'Random Lorem Ipsum Journal')
		order: 5.2;
		icon: (Smalltalk ui icons iconNamed: #announcement);
		parent: #Collaboration;
		action: [ self exampleOpenRandomLoremIpsum ]