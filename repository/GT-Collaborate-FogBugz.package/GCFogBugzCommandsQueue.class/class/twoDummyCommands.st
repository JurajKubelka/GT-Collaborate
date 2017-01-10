writing
twoDummyCommands
	"Executes two commands. Both writes to Transcript."
	"self twoDummyCommands"
	<gtExample>
   ^ GCFogBugzCommandsQueue new
			addCommand: (GCFogBugzDummyCommand new);
			addCommand: (GCFogBugzDummyCommand new);
			yourself
