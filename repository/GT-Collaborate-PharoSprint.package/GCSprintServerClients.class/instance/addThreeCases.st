initialization
addThreeCases
	clients do: [ :eachClient |
		eachClient fogbugz cases
			addTopic: GCFogBugzCase case18763;
			addTopic: GCFogBugzCase case18846;
			addTopic: GCFogBugzCase case18868
		 ]