update
updateFogBugzItem: aGLMInteractableBrick on: aGCTopicHolder 
	(aGLMInteractableBrick submorphs at: 1 ifAbsent: nil)
		ifNotNil: [ :aLabelMorph | aLabelMorph text: aGCTopicHolder title ]
