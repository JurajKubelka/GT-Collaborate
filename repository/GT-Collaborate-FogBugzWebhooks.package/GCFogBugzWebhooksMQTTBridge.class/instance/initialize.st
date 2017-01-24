initialization
initialize
	super initialize.
	self map: '/pharo/fogbugz/cases' to: [ :request :response |
		self send: request response: response ]