private - build ui
configureList: aList
	^ aList
"		tags: [ :eachCase | (eachCase isGCFogBugCase and: [ eachCase developer notNil ])
			ifTrue: [ { eachCase developer name } ]
			ifFalse: [ #() ] ];
"		allowItemDrag: [ :item :list | item isGCFogBugCase ];
		allowDropOnItem: [ :draggedObject :targetItem :list | draggedObject isGCFogBugCase ];
		yourself