private
updateTopics
	mutex critical: [ 
		book ifNotNil: [ :aBook |
			aBook do: [ :eachTopic | self addTopicIfSatisfy: eachTopic ] ] ]