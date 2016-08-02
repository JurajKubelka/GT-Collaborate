private
updateDeveloperStatuses: aGCFogBugzBook 
	self createTaskAndDeveloperStatuses do: [ :each |
		each execute: aGCFogBugzBook ]