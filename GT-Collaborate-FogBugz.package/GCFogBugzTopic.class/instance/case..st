accessing
case: anObject
	case := anObject.
	self announce: (GCTopicUpdated new topic: self; yourself)