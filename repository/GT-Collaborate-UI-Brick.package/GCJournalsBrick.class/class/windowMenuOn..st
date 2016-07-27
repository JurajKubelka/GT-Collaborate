menu items
windowMenuOn: aBuilder
	"To inject your custom items in a specific place, note that each item increases in order by 1. For example, if you wanted your item to be the second item, you could give it an #order: 1.5"

	<windowMenu>
	(aBuilder item: #'Inspect Journals')
		order: 0.0;
		action: [ aBuilder model model journals inspect ];
		icon: Smalltalk ui icons glamorousInspect;
		enabledBlock: [ aBuilder model notNil and: [ aBuilder model model notNil ] ];
		withSeparatorAfter.