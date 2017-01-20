world menu
menuInspectCommandOn: aBuilder
	"Add a custom menu item to the world menu"

	<worldMenu>
	(aBuilder item: #'Pharo Sprint Dashboard')
		order: 10;
		icon: #glamorousInspect asIcon;
		parent: #Collaboration;
		action: [ self openPublic ]