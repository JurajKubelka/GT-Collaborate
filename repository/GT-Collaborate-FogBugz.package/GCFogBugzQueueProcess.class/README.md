I represent a background process.
I am responsible for executing commands (GCFogBugzCommand) on a background (in an extra thread).

I collaborate with GCFogBugzCommandsQueue who is my only owner. We have one-to-one relation. GCFogBugzCommandsQueue keeps all commands that should be executed. Whenever someone adds a command to the queue (GCFogBugzCommandsQueue>>#addCommand:), I am triggered to execute all the commands in the queue.

It is supposed to cmmunicate dirrectly with GCFogBugzCommandsQueue instead of with me. I am an internal helper for the GCFogBugzCommandsQueue object.

Public API and Key Messages

- activate - activates the command executions
 
Internal Representation and Key Implementation Points.

   Instance Variables
	mutex:		<Mutex>
	process:		<Process>
	queue:		<GCFogBugzCommandsQueue>
