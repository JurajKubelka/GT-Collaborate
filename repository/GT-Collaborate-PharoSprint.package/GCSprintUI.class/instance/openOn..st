instance creation
openOn: aSprint
	| browser |
	browser := GLMTabulator new.
	browser title: aSprint developer name asString, '''s Pharo Sprint Dashboard'.
	self buildTabulator: browser.
	^ browser openOn: aSprint