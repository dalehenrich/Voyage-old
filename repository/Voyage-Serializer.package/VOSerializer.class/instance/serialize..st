serializing
serialize: anObject 
	| roots serializer  |
	
	roots := VORootCollector new startOn: anObject.
	references := self collectReferencesOf: roots.
	serializedMap := Dictionary new.
	
	serializer := VOJSONSerializer new 
		references: references;
		yourself.
	roots do: [ :each | 
		serializedMap 
			at: each 
			put: (serializer startOn: each) ].
