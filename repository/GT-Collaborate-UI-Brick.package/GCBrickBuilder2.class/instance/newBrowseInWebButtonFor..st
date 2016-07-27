instance creation
newBrowseInWebButtonFor: aTopicHolder
	^ self newActionButton
		hintTitle: 'Open in Browser';
		hintText: 'open it in web browser';
		icon: self themer bindingThemer inspectIcon;
		action: [ :b | self inform: 'click'. b inspect. ]