accessing
sortBlock: aBlock
	"aBlock is two-arguments block: [ :a :b | a < b ]."
	mutex critical: [ topics sortBlock: aBlock ]