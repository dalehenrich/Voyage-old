removing
removeValue: anObject
	objects removeKey: (self keyAtValue: anObject) ifAbsent: [].
