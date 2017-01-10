tests
testCases
	cases := GCFogBugzCases new.
	book cases: cases.
	self assert: book cases == cases.
	self assert: book monitor cases == cases.