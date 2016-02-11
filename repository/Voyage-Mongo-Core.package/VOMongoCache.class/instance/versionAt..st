accessing
versionAt: anId
	^timeStamps 
		at: anId
		ifAbsent: [ 0 ]