converting
flushResults
	| tempCollection |
	tempCollection := OrderedCollection new.
	self results flush: [ :each | tempCollection addLast: each ].
	self flushedResults: tempCollection