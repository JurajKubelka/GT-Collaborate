examples - public fogbugz and local sprint server
aliceOnFogBugzWithLocalPharoSprintServer
	<script: 'self aliceOnFogBugzWithLocalPharoSprintServer inspect'>
	<gtExample>
	^ self new 
		developer: GCSprintUser alice;
		fogbugz: FogBugzClient new;
		useLocalCommandServer;
		yourself