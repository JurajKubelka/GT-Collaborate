I represent a communication node with the FogBugz site.
I am responsible for executing all commands (login, queries) that are supposed to send to the FogBugz site.

I collaborate with GCFogBugzCommandsQueue that knows how to execute all commands in a background process. I pass to all performed commands an Announcer where commands are responsible to announce their status, e.g., when they are finished, network errors. 

I collaborate with FogBugzTracker who knows how to proceed some operations on the FogBugz server.

I am owned by GCFogBugzBook who share with me GCFogBugzCases, and Announcer. I pass both to some GCFogBugzMonitorCommand objects. I do not use GCFogBugzCases, neither Announcer.

Public API and Key Messages

- ensureLogged - ensure a login into a FogBugz
- updateOpenIssues - ask for all open issues on a FogBugz
- updateOpenOrRecentlyClosedIssues - ask for all open and recently closed issues on a FogBugz

[[[
	| monitor |
	monitor := GCFogBugzMonitor new
		cases: GCFogBugzCases new;
		announcer: Announcer new;
		yourself.
	monitor announcer when: Announcement do: [ :ann | Transcript show: ann; cr ].
	monitor login.
]]]
 
Internal Representation and Key Implementation Points.

    Instance Variables
	announcer:		<Announcer>
	cases:		<GCFogBugzCases>
	queue:		<GCFogBugzCommandsQueue>
	tracker:		<FogBugzTracker>
