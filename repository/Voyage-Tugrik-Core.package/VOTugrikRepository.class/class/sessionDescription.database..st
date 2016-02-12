instance creation
sessionDescription: aTDSessionDescription database: databaseString
	^ self basicNew
		initializeSessionDescription: aTDSessionDescription database: databaseString;
		yourself