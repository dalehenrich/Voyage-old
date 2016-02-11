visitor
visit: anObject 	
	self validate: anObject ifVisited: [ ^ self ].
	anObject isTypePersistent
		ifTrue: [ self visitRoot: anObject ]
		ifFalse: [ self visitObject: anObject ].