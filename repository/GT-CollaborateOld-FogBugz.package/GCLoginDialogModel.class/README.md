I represent a dialog window where a user can put credentials. 

I ask for login (email) and password.

GCFogBugsSettings uses me if it is neccessary to ask user for the credentials.

Public API and Key Messages

- usernameField - a field that holds username (login). You can access value using text/text:   
- passwordField - a field that hols password. You can access value using text/text:
- openDialogWithSpec - open the dialog modal window
- credentials - receive credentials as an association username -> password

[[[
	GCLoginDialogModel getCredentials.
]]]
