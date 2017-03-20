accessing - case
eventAt: anInteger 
	^ self case events at: anInteger ifAbsent: [ FogBugzEvent new ]