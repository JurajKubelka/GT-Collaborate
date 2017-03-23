examples
dialogWithLoginAndPassword
	<gtExample>
	| dialog |
	dialog := FogBugzLoginDialogModel new.
	dialog usernameField text: 'My Login Name'.
	dialog passwordField text: 'My Secret Password'.
	^ dialog