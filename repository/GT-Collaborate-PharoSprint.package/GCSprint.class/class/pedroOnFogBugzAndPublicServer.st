examples - public servers
pedroOnFogBugzAndPublicServer
	<script: 'self pedroOnFogBugzAndPublicServer inspect'>
	<gtExample>
	^ self new 
		developer: GCSprintUser pedro;
		fogbugz: FogBugzClient new;
		usePublicCommandServer;
		yourself