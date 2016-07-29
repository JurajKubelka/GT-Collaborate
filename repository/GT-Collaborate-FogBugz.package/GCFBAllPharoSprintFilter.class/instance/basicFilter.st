as yet unclassified
basicFilter
	filtered := OrderedCollection new.
	self book do: [ :eachTopic | self filterTopic: eachTopic ]