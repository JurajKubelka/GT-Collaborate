ui
ask
	"self uniqueInstance ask"
	| answer |
	answer := self openDialog.
	answer ifNil: [ ^ self ].
	answer key ifNotEmpty: [ self login: answer key ].
	answer value ifNotEmpty: [ self password: answer value ].