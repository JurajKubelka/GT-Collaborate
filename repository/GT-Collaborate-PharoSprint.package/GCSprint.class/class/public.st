instance creation
public
	"Pharo Sprint Dashboard with Public Server Connections"
	<script: 'self public inspect'>
	^ self new 
		developer: GCSprintUser default;
		fogbugz: GCFogBugz new;
		usePublicCommandServer;
		yourself