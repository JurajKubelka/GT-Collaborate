world menu
menuResetCommandOn: aBuilder
	"Add a custom menu item to the world menu"
	<worldMenu>
	(aBuilder item: #'Reset Trantor Server')
		order: 20.6;
		icon: (Smalltalk ui icons iconNamed: #changeRemove);
		parent: #Collaboration;
		action: [ self reset ]