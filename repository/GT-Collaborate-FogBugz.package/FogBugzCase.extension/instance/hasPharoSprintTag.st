*GT-Collaborate-FogBugz
hasPharoSprintTag
	^ self tags notNil and: [ 
		self tags anySatisfy: [ :eachTag | 
			eachTag includesSubstring: 'Sprint' caseSensitive: false ] ]