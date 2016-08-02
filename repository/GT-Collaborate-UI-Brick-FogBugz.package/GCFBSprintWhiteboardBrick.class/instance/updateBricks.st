accessing
updateBricks
	self allColumnBrick 
		journalsHolder: self journalsHolder;
		book: self book.
	self takenColumnBrick 
		journalsHolder: self journalsHolder;
		book: self book.
	self doneColumnBrick 
		journalsHolder: self journalsHolder;
		book: self book.
