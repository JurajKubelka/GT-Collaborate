as yet unclassified
topicWithNumber: anInteger 
	^ mutex critical: [ collection detect: [ :eachTopic | eachTopic id = anInteger ] ifNone: [ GCNullTopic default ] ]