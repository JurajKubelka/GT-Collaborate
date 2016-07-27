world menu
menuCommandInspectDefaultBookOn: aBuilder
	"Add a custom menu item to the world menu"

	<worldMenu>
	(aBuilder item: #'Inspect Default FogBugz Book')
		order: 3.2;
		icon: (Smalltalk ui icons glamorousInspect);
		parent: #Collaboration;
		action: [ self inspectDefault ]