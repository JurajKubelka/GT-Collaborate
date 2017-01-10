world menu
menuCommandUpdateDefaultBookOn: aBuilder
	"Add a custom menu item to the world menu"

	<worldMenu>
	(aBuilder item: #'Update Default FogBugz Book')
		order: 3.3;
		icon: (Smalltalk ui icons glamorousRefresh);
		parent: #Collaboration;
		action: [ self default update ]