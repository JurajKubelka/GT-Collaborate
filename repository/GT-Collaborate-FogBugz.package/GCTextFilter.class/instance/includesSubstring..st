testing
includesSubstring: aString
	^ self text 
		ifEmpty: [ true ]
		ifNotEmpty: [ aString includesSubstring: self text caseSensitive: false ]