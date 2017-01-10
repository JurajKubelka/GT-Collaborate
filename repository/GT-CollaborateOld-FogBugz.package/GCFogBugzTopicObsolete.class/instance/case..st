accessing
case: anObject
	case := anObject.
	self announce: (GCFogBugzCaseUpdated new topic: self; yourself)