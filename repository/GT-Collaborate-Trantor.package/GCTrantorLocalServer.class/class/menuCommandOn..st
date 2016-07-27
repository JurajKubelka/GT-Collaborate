world menu
menuCommandOn: aBuilder
	"Add a custom menu item to the world menu"
	<worldMenu>
	(aBuilder item: #'Local Trantor Journal')
		order: 20.0;
		icon: (Smalltalk ui icons iconNamed: #announcement);
		parent: #Collaboration;
		action: [ self exampleJournalWithTrantorEngine ]