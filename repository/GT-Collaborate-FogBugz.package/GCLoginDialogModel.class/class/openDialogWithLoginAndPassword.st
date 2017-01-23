examples
openDialogWithLoginAndPassword
	<script>
	| dialog ui |
	dialog := GCLoginDialogModel new.
	dialog usernameField text: 'My Login Name'.
	dialog passwordField text: 'My Secret Password'.	
	ui := dialog openDialogWithSpec.
	ui modalRelativeTo: self currentWorld.
	ui cancelled ifTrue: [ ^ nil ].
	^ dialog credentials