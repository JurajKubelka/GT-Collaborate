world menu
menuCommandResetDefaultBookOn: aBuilder
	"Add a custom menu item to the world menu"

	<worldMenu>
	(aBuilder item: #'Reset Default FogBugz Book')
		order: 3.4;
		icon: (Smalltalk ui icons glamorousRemove);
		parent: #Collaboration;
		action: [ self resetAll ];
		withSeparatorAfter 