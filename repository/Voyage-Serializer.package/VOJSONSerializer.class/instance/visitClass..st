visitor
visitClass: aClass 
	stream nextPut: { '#referenceOf' -> aClass name } asDictionary