examples - local servers
alice
	<script: 'self alice inspect'>
	<gtExample>
	^ self new 
		developer: GCSprintUser alice;
		fogbugz: FogBugzClient threeCases;
		useLocalCommandServer;
		yourself