running
setUp
	super setUp.
	cases := GCFogBugzCases new.
	case1a := FogBugzCase new id: 1; title: 'case one'; 
		lastModification: '2016-07-13T18:18:19.386493-04:00' asDateAndTime; yourself.
	case1b := FogBugzCase new id: 1; title: 'case one'; 
		lastModification: '2016-07-13T18:18:19.386493-04:00' asDateAndTime; yourself.
	case1c := FogBugzCase new id: 1; title: 'case one'; 
		lastModification: '2016-07-13T19:18:19.386493-04:00' asDateAndTime; yourself.
	case2 := FogBugzCase new id: 2; title: 'case two'; 
		lastModification: '2016-07-10T11:18:19.386493-04:00' asDateAndTime; yourself.
	