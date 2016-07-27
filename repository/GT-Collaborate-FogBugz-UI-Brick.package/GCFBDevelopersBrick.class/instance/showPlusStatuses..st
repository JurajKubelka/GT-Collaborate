private - status
showPlusStatuses: aGLMEmptyPopupBrick 
	^ GLMBrick new 
		useVerticalLinearLayout;
		vShrinkWrap;
		hShrinkWrap;
		with: [ :b | b themer: aGLMEmptyPopupBrick themer ];
		with: [ :b |	
			GCDeveloperStatus allSubclasses do: [ :eachClass | | label |
				label := GLMLabelBrick new
					text: eachClass statusName;
					when: #onClicked do: [ 
						self markDeveloperStatus: (eachClass developer: self developer).
						aGLMEmptyPopupBrick close ];
					vShrinkWrap; hShrinkWrap;
					selectedColor: Color veryLightGray;
					enable;
					yourself.
				b addBrickBack: label ]
		];
		yourself