private - build ui
proposedList: composite
	^ composite fastList 
			title: 'Proposed';
			with: [ :aList | self addFogBugzActions: aList ];
			display: [ :aSprint | | col | 
				col := aSprint proposed.
				col ifEmpty: [ col addFirst: 'choose from all :-)' ].
				col ];
			format: [ :aCase :aSprint | self proposedRowFor: aCase sprint: aSprint ];
			rowHeight: [ :presentation | presentation class defaultRowHeight * 2 ];
			with: [ :list | self configureList: list ];
			dropOnItem: [ :draggedObject :targetItem :list | | aSprint |
				aSprint := list entity.
				draggedObject renounce: aSprint developer.
				true ].