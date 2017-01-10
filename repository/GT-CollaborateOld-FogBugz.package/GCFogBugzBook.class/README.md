I am represent a root access to Fogbugz topics (cases).
I know how to login, udpate topics. I provide access to fetched topics.

I collaborate with GCFogBugzBook and GCFogBugzMonitor that work for me. The operations are asynchronous. All responses are provided using Announcer.

Public API and Key Messages

- login - login to the FogBugz   
- update - updates cases from the FogBugz

[[[
	GCFogBugzBook threeCases  
]]]
 
Internal Representation and Key Implementation Points.

    Instance Variables
	cases:		<GCFogBugzCases>
	monitor:		<GCFogBugzMonitor>
