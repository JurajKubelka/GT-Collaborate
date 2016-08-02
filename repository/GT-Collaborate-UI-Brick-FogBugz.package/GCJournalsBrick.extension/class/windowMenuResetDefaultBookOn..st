*GT-Collaborate-UI-Brick-FogBugz
windowMenuResetDefaultBookOn: aBuilder
	"To inject your custom items in a specific place, note that each item increases in order by 1. For example, if you wanted your item to be the second item, you could give it an #order: 1.5"

	<windowMenu>
	(aBuilder item: #'Reset Default Book and Cases')
		order: -0.3;
		action: [ GCFogBugzCases reset. GCFogBugzBook reset. ];
		icon: Smalltalk ui icons glamorousRemove