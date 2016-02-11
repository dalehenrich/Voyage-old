visitor
visitRoot: anObject
	stream nextPut: { '__id' -> (self referenceAt: anObject) reference } asDictionary