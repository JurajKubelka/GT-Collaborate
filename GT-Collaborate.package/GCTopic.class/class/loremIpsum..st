examples
loremIpsum: prefixText
	^ self new
		contents: (GCText loremIpsum: prefixText);
		yourself.