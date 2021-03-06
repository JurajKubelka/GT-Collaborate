private - build ui
takenList: aGLMTabulator
	aGLMTabulator transmit to: #taken; andShow: [ :composite |  
		composite fastList
			title: 'Taken'; 
			display: [ :aSprint | | col | 
				col := aSprint taken sorted: [ :a :b | (aSprint isMyState: a) ].
				col ifEmpty: [ col addFirst: 'be first :-)' ].
				col ];
			format: [ :aCase :aSprint | self takenRowFor: aCase sprint: aSprint ];
			rowHeight: [ :presentation | presentation class defaultRowHeight * 3 ];
			with: [ :list | self configureList: list ];
			dropOnItem: [ :draggedObject :targetItem :list | | aSprint |
				aSprint := list entity.
				draggedObject take: aSprint developer.
				true ]
			].
	^ aGLMTabulator