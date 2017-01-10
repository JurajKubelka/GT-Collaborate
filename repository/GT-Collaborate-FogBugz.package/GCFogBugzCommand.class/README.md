I represent a command that is executed in order to perform operations on the FogBugz server.
I am an abstract representation.

I keep a tracker (FogBugzTracker) that can perform the FogBugz operations and announcer (Announcer) that is used for sending information (successful or unsuccessful opetation) to the interested clients.

I am responsible to run a command only if the FogBugzTracker is logged.

I collaborate with FogBugzTracker who can perform FogBugz operations. Then GCFogBugzMonitor creates instances of my subclasses, adds them into GCFogBugzCommandsQueue, and GCFogBugzQueueProcess executes them.

Public API and Key Messages

- execute - process the operation

[[[
	"You cannot send #execute because I am an abstract class."
   GCFogBugzCommand new 
		announcer: Announcer new;
		tracker: FogBugzTracker new;
		yourself
]]]
 
Internal Representation and Key Implementation Points.

    Instance Variables
	announcer:		<Announcer>
	tracker:		<FogBugzTracker>
