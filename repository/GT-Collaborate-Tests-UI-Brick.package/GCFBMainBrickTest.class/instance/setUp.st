running
setUp
	super setUp.
	semaphore := Semaphore new.
	results := OrderedCollection new.	
	brick := GCFBMainBrick basic.
	window := brick asBrickedMorph 
		extent: 300 @ 400;
		openInWindowLabeled: 'Tested FogBugz Main Window'.