actions
submitUpdate
	self updateButtonBrick 
		disable;
		text: self updatingButtonText.
	self book update.