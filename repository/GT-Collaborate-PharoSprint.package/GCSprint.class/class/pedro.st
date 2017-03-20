examples - local servers
pedro
	<script: 'self pedro inspect'>
	<gtExample>
	^ self new 
		developer: GCSprintUser pedro;
		fogbugz: FogBugzClient threeCases;
		useLocalCommandServer;
		yourself