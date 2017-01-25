private
messageReceived: message
	Transcript cr; show: message asString; cr.
	fogbugz ifNotNil: [ :aFogBugz | aFogBugz update ]