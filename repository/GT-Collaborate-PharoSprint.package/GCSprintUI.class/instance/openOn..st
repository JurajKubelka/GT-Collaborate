instance creation
openOn: aSprint
	| browser |
	browser := GLMTabulator new.
	browser title: 'Pharo Sprint Dashboard'.
	self buildTabulator: browser.
	^ browser openOn: aSprint