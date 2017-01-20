testing
isAuthorized
	^ self fogbugz notNil and: [ self fogbugz isLoggedIn ]