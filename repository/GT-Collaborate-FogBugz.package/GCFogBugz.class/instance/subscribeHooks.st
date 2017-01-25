initialize-release
subscribeHooks
	"Subscribe any hook.
	The hook is searched by pragma #gcFogBugzHook. The method that defines the pragma has to
	receive one argument (FGFogBugz object). The hook object has to implement #unsubscribeFrom: in order to stop itself.
	"
	hooks := (PragmaCollector filter: [ :pragma | pragma keyword = #gcFogBugzHook ]) 
		reset;
		collect: [ :pragma |
			pragma methodClass theNonMetaClass perform: pragma methodSelector with: self ].