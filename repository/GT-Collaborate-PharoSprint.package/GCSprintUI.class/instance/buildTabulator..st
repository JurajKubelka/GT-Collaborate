instance creation
buildTabulator: aGLMTabulator
	aGLMTabulator column: #proposed; column: #taken; column: #done.
	aGLMTabulator transmit to: #proposed; andShow: [ :a | 
		a list 
			title: 'Proposed';
			display: [ :aSprint | | col | 
				col := aSprint proposed.
				col ifEmpty: [ col addFirst: 'you are done :-)' ].
				col ];
			allowItemDrag: [ :item :list | item isGCFogBugCase ];
			allowDropOnItem: [ :draggedObject :targetItem :list | draggedObject isGCFogBugCase ];
			dropOnItem: [ :draggedObject :targetItem :list | 
				draggedObject renounce.
				aGLMTabulator update.
				true ]
			].
	aGLMTabulator transmit to: #taken; andShow: [:a |  
		a list
			title: 'Taken'; 
			display: [ :aSprint | | col | 
				col := aSprint taken.
				col ifEmpty: [ col addFirst: 'be first :-)' ].
				col ];
			allowItemDrag: [ :item :list | item isGCFogBugCase ];
			allowDropOnItem: [ :draggedObject :targetItem :list | draggedObject isGCFogBugCase ];
			dropOnItem: [ :draggedObject :targetItem :list | 
				draggedObject take.
				aGLMTabulator update.
				true ]
			].
	aGLMTabulator transmit to: #done; andShow: [:a |  
		a list
			title: 'Done'; 
			display: [ :aSprint | | col | 
				col := aSprint done.
				col ifEmpty: [ col addFirst: 'be first :-)' ].
				col ];
			allowItemDrag: [ :item :list | item isGCFogBugCase ];
			allowDropOnItem: [ :draggedObject :targetItem :list | draggedObject isGCFogBugCase ];
			dropOnItem: [ :draggedObject :targetItem :list | 
				draggedObject finish.
				aGLMTabulator update.
				true ]
			].
	^ aGLMTabulator