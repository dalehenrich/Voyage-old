visitor
visitObject: anObject 
	| serialized |
		
	serialized := self pushStream: [ self basicVisitObject: anObject ].
	stream nextPut: (Dictionary newFromPairs: serialized).