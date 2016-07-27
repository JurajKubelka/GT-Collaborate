examples
loremIpsum: prefixString
	"self loremIpsum: '1.'"
	^ self new
		text: (prefixString, String space, (String loremIpsum: 108 atRandom + 13));
		yourself