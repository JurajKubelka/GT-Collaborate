accessing - room
chat
	^ chat ifNil: [ chat := (MQTTChat pharo: self developer name asString) ]