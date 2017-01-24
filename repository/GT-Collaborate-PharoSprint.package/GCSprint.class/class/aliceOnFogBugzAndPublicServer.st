examples - public servers
aliceOnFogBugzAndPublicServer
	<script: 'self aliceOnFogBugzAndPublicServer inspect'>
	<gtExample>
	^ self new 
		developer: GCSprintUser alice;
		fogbugz: GCFogBugz new;
		usePublicCommandServer;
		yourself