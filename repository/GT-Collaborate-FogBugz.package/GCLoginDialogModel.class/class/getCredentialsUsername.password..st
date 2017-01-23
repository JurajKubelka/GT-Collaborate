instance creation
getCredentialsUsername: stringUsername password: stringPassword
	"(self getCredentialsUsername: 'username' password: 'password') inspect"
	<script: 'self getCredentialsUsername: ''username'' password: ''password'''>
	| dialog ui |
	dialog := GCLoginDialogModel new.
	dialog usernameField text: stringUsername.
	dialog passwordField text: stringPassword.	
	ui := dialog openDialogWithSpec.
	ui modalRelativeTo: self currentWorld.
	ui cancelled ifTrue: [ ^ nil ].
	^ dialog credentials