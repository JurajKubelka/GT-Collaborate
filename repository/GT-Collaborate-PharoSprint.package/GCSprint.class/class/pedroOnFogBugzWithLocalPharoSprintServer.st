examples
pedroOnFogBugzWithLocalPharoSprintServer
	<script: 'self pedroOnFogBugzWithLocalPharoSprintServer inspect'>
	<gtExample>
	^ self new 
		developer: GCSprintUser pedro;
		fogbugz: GCFogBugz new;
		useLocalCommandServer;
		yourself