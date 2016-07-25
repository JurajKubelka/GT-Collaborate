actions
browseCase
	| url |
	url := (PharoIssue number: self case id) trackerUrl.
	WebBrowser openOn: url.