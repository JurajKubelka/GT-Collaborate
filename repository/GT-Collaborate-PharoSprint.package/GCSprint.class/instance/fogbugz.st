accessing
fogbugz
	^ fogbugz ifNil: [ fogbugz := GCFogBugz default ]