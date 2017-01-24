I am ZnDispatcherDelegate, doing a straight-forward dispatching to mapped URLs.

I delegate incoming HTTP POST /pharo/fogbugz/cases requests to MQTT iot.eclipse.org//pharo/fogbugz/cases 

[[[
ZnServer startDefaultOn: 8085.
ZnServer default delegate: GCFogBugzWebhooksMQTTBridge new

ZnClient new 
	post: 'http://localhost:8085/pharo/fogbugz/cases'
	contents: 'Example Contents';
	response
]]]