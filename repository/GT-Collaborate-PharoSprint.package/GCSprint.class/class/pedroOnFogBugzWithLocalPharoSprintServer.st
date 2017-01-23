examples
pedroOnFogBugzWithLocalPharoSprintServer
	<script: 'self pedroOnFogBugzWithLocalPharoSprintServer inspect'>
	<gtExample>
	^ self new 
		developer: GCSprintUser pedro;
		fogbugz: GCFogBugz default;
		useLocalCommandServer;
		yourself