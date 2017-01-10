private
refreshTopics
	mutex critical: [ 
		self topics: self newTopicsCollection.
		self updateTopics ]