build ui
configureList: aList
	aList
		updateOn: GCFogBugzCaseAdded from: [ :aSprint | aSprint announcer ];
		updateOn: GCFogBugzCaseUpdated from: [ :aSprint | aSprint announcer ];
		updateOn: GCFogBugzCasesUpdated from: [ :aSprint | aSprint announcer ];
		allowItemDrag: [ :item :list | item isGCFogBugCase ];
		allowDropOnItem: [ :draggedObject :targetItem :list | draggedObject isGCFogBugCase ];
		yourself