tests
testUpdateCases3
	"add two new cases"
	cases updateCases: { case1a. case2 }.
	self assert: cases size equals: 2.
	self assert: cases topics first id equals: case1a id.
	self assert: cases topics first isTopic.
	self assert: cases topics first case == case1a.
	self assert: cases topics second id equals: case2 id.
	self assert: cases topics second isTopic.
	self assert: cases topics second case == case2.