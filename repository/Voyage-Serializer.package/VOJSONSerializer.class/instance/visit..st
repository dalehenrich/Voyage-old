visitor
visit: anObject 
	anObject isTypePersistent
		ifTrue: [ self visitRoot: anObject ]
		ifFalse: [ 
			self validate: anObject ifVisited: [ ^self ].
			self visitObject: anObject ].
		