instance creation
newLabel
	^ GLMLabelBrick new
		hSpaceFill;
		vShrinkWrap;
		textPosition: #leftCenter;
		vAlign: #center;
		padding: { 0 . self themer bindingThemer padding }