private
validate: anObject ifVisited: aBlock 
	(self isVisited: anObject) ifTrue: aBlock.
	self addVisited: anObject.
