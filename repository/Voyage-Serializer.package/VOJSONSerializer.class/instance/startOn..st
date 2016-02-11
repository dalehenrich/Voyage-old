accessing
startOn: anObject 
	"This is the entry point for the serializer. I need to use a different method than 
	 #visit: because I need to force the write of the first objects, which will be a root, but 
	 not a reference."
	
	self resetVisited.
	self addVisited: anObject.
	
	stream := OrderedCollection new writeStream.
	self pushStream: [
		self basicVisitObject: anObject.
		json := Dictionary newFromPairs: stream contents ].

	^ json