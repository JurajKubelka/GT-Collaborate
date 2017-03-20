accessing
case: anObject
	case := anObject.
	self announce: (FogBugzCaseUpdatedAnnouncement new topic: self; yourself)