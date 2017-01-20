instance creation
public
	"Pharo Sprint Dashboard with Public Server Connections"
	<script: 'self public inspect'>
	^ public ifNil: [ public :=
		self new 
			developer: GCSprintUser default;
			fogbugz: GCFogBugz default;
			usePublicCommandServer;
			yourself ]