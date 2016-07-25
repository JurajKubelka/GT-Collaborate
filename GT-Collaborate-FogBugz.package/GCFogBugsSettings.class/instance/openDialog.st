ui
openDialog
	"self uniqueInstance openDialog"
	| dialog ui |
	dialog := GCLoginDialogModel new.
	dialog usernameField text: self login.
	dialog passwordField text: self password.
	ui := dialog openDialogWithSpec.
	ui modalRelativeTo: self currentWorld.
	ui cancelled ifTrue: [ ^ nil ].
	^ dialog credentials