tests
testUpdateCaseTwice2
	"case is not updated because of the same modification time"
	self testUpdateCases.
	cases updateCases: { case1b }.
	self assert: cases size equals: 1.
	self assert: cases topics first id equals: case1a id.
	self assert: cases topics first isTopic.
	self assert: cases topics first case == case1a.