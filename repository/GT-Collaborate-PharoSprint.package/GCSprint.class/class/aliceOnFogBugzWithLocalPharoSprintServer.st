examples
aliceOnFogBugzWithLocalPharoSprintServer
	<script: 'self aliceOnFogBugzWithLocalPharoSprintServer inspect'>
	<gtExample>
	^ self new 
		developer: GCSprintUser alice;
		fogbugz: GCFogBugz default;
		useLocalCommandServer;
		yourself