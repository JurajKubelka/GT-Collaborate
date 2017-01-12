tests
testUpdateCases
	"add a new case"
	cases updateCases: { case1a }.
	self assert: cases size equals: 1.
	self assert: cases topics first id equals: case1a id.
	self assert: cases topics first isTopic.
	self assert: cases topics first case == case1a.