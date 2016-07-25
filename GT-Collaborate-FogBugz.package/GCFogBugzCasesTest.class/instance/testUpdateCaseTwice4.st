tests
testUpdateCaseTwice4
	self testUpdateCase.
	cases updateCase: case2.
	self assert: cases size equals: 2.
	self assert: cases topics second id equals: case2 id.
	self assert: cases topics second isTopic.
	self assert: cases topics second case == case2.