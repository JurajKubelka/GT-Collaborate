actions
firstClientProposeCase
	| case |
	case := self firstClient undefinedAndOpen first.
	case propose: self firstClient developer.
	^ case