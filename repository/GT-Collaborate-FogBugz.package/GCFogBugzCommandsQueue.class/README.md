I represent a command queue.
I am responsible to receive commands (GCFogBugzMonitorCommand), and execute them on background one after another. 

I collaborate with GCFogBugzQueueProcess who executes the commands in a background. GCFogBugzMonitor owns me and adds corresponding commands to the queue. I automatically execute them.

Public API and Key Messages

- addCommand: - add command to the queue and execute it immediately.

[[[
   GCFogBugzCommandsQueue new
		addCommand: (GCFogBugzDummyCommand new);
		yourself
]]]
 
Internal Representation and Key Implementation Points.

    Instance Variables
	collection:		<OrderedCollection>
	mutex:		<Mutex>
	process:		<GCFogBugzQueueProcess>
