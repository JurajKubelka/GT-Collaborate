actions
askForCredentialsIfNecessary
	| loginPassword |
	loginPassword := GCLoginDialogModel getCredentialsUsername: self login password: self password.
	loginPassword ifNotNil: [ 
		self login: loginPassword key; password: loginPassword value ]