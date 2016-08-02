instance creation
newEmptyBrick: actionBlock
	^ GLMLabelBrick new
			text: 'No items';
			hSpaceFill;
			textPosition: #center;
			padding: 15;
			textColor: Color red;
			fontSize: 13;
			enable;
			when: #onClicked do: actionBlock;
			yourself