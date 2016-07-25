*GT-Collaborate-FogBugz-UI-Brick
menuCommandAliceJournalsOn: aBuilder
	"Add a custom menu item to the world menu"

	<worldMenu>
	(aBuilder item: #'Alice''s Journal')
		order: 0.6;
		icon: (Smalltalk ui icons iconNamed: #announcement);
		parent: #Collaboration;
		action: [ self openFogBugzAlice ];
		withSeparatorAfter 