*GT-Collaborate-FogBugz-UI-Brick
windowMenuUpdateBookOn: aBuilder
	"To inject your custom items in a specific place, note that each item increases in order by 1. For example, if you wanted your item to be the second item, you could give it an #order: 1.5"

	<windowMenu>
	(aBuilder item: #'Update Book')
		order: -0.5;
		action: [ aBuilder model model journals book update ];
		icon: Smalltalk ui icons glamorousRefresh;
		enabledBlock: [ aBuilder model notNil and: [ aBuilder model model notNil ] ]