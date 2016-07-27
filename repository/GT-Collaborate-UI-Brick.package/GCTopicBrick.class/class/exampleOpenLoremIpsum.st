examples
exampleOpenLoremIpsum
	^ self loremIpsum asBrickedMorph
			when: #onClicked do: [ :event :brick | self inform: 'click' ];
			extent: 400 @ 50;
			openInWindowLabeled: 'Lorem Ipsum Topic'