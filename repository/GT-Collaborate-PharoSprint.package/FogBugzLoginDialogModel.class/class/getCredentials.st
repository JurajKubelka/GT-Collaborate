instance creation
getCredentials
	"self getCredentials inspect"
	<script>
	
  | login dialog |
  login := self new.
  dialog := login openDialogWithSpec.
  dialog modalRelativeTo: self currentWorld.
  dialog cancelled ifTrue: [ ^ nil ].
  ^ login credentials