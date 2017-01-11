instance creation
openOn: aSprint
	| browser |
	browser := GLMTabulator new.
	browser column: #proposed; column: #taken; column: #done.
	browser transmit to: #proposed; andShow: [ :a | 
		a list 
			title: 'Proposed';
			display: [ | col | 
				col := aSprint proposed.
				col ifEmpty: [ col addFirst: 'you are done :-)' ].
				col ];
			allowItemDrag: [ :item :list | item isGCFogBugCase ];
			allowDropOnItem: [ :draggedObject :targetItem :list | draggedObject isGCFogBugCase ];
			dropOnItem: [ :draggedObject :targetItem :list | 
				draggedObject renounce.
				browser update.
				true ]
			].
	browser transmit to: #taken; andShow: [:a |  
		a list
			title: 'Taken'; 
			display: [ | col | 
				col := aSprint taken.
				col ifEmpty: [ col addFirst: 'be first :-)' ].
				col ];
			allowItemDrag: [ :item :list | item isGCFogBugCase ];
			allowDropOnItem: [ :draggedObject :targetItem :list | draggedObject isGCFogBugCase ];
			dropOnItem: [ :draggedObject :targetItem :list | 
				draggedObject take.
				browser update.
				true ]
			].
	browser transmit to: #done; andShow: [:a |  
		a list
			title: 'Done'; 
			display: [ | col | 
				col := aSprint done.
				col ifEmpty: [ col addFirst: 'be first :-)' ].
				col ];
			allowItemDrag: [ :item :list | item isGCFogBugCase ];
			allowDropOnItem: [ :draggedObject :targetItem :list | draggedObject isGCFogBugCase ];
			dropOnItem: [ :draggedObject :targetItem :list | 
				draggedObject finish.
				browser update.
				true ]
			].
	^ browser openOn: aSprint