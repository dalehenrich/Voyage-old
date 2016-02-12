printing
printOn: aStream
	super initialize.
	sessionDescription ifNotNil: [ aStream nextPutAll: ' ' , sessionDescription name , ' ' ].
	databaseName ifNotNil: [ aStream nextPutAll: databaseName ]