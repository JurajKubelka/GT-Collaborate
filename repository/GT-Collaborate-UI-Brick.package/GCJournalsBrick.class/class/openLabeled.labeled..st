open
openLabeled: anInstance labeled: aString
	^ (anInstance asBrickedMorph 
			extent: 400 @ 500;
			openInWindowLabeled: aString)
				model: anInstance journalHolder;
				yourself