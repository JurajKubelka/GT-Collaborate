private - build ui
proposedRowFor: aCase sprint: aSprint
	aCase isGCFogBugCase ifFalse: [ ^ aCase ].
	^ (Smalltalk ui theme newColumnIn: World for: { 
			aCase case title asStringMorph emphasis: 1; yourself.
			(aCase id asString, ' - ', aCase status asString) asStringMorph. })
				cellInset: 0; 
				hResizing: #shrinkWrap;
				vResizing: #shrinkWrap;
				yourself