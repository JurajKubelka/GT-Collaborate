I represent a FogBugz topic. The FogBugz topic is a FogBugz case with additional information that are not kept on the FogBugz server.

I keep a developer status (GCDeveloperStatus), but it may change. I also keep FogBugzCase object that is provided by a FogBugz API.

I collaborate with GCFogBugzCases who keeps a collection of the objects of my type.

Public API and Key Messages

- main messages are resend to the FogBugzCase object

[[[
	GCFogBugzTopic case18868 
]]]
 
Internal Representation and Key Implementation Points.

    Instance Variables
	case:		<FogBugzCase>
