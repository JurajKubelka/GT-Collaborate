examples
dialogWithLoginAndPassword
	<gtExample>
	| dialog |
	dialog := GCLoginDialogModel new.
	dialog usernameField text: 'My Login Name'.
	dialog passwordField text: 'My Secret Password'.
	^ dialog