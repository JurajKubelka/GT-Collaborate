as yet unclassified
takenRow: aCase 
	aCase isGCFogBugCase ifFalse: [ ^ aCase ].
	^ (Smalltalk ui theme newColumnIn: World for: { 
			aCase case asStringMorph. 
			aCase status asStringMorph.
			aCase developer name asStringMorph })
				cellInset: 0; 
				hResizing: #shrinkWrap;
				vResizing: #shrinkWrap;
				yourself