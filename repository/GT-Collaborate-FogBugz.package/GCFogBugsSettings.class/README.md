I represent setting for FogBugz.

I keep password, login name, and token that are used for accessing the FogBugz server.

I cooperate with GCLoginDialogModel in case it is neccessary to ask user for the credentials.

Public API and Key Messages

- login - get login name  
- password - get login password 
- token - get connection token.

[[[
	GCFogBugsSettings uniqueInstance login.
]]]
 
Internal Representation and Key Implementation Points.

    Instance Variables
	login:		<String>
	password:		<String>
	token:		<String>
