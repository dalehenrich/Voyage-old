resetting
removeCollection: aClass 
	objectMap 
		removeKey: (self collectionClassOf: aClass)
		ifAbsent: [ "Do nothing" ]	