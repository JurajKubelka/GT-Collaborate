I represent a list of all fetched FogBugz cases.
I am responsible for providing and updating cases. I keep GCFogBugzTopic objects.

I collaboreate with GCFogBugzBook who shares me with other objects that are responsible for updating the provided cases. 

Public API and Key Messages

- topicAt: - provide a topic at a given position   
- topicWithNumber: - provide a topic of a given number
- updateCase: - update a topic of a given FogBugzCase

[[[
	GCFogBugzCases threeCases
]]]

Internal Representation and Key Implementation Points.

    Instance Variables
	announcer:		<Announcer>
	collection:		<OrderedCollection>
	mutex:		<Mutex>
