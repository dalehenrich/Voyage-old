instance creation
root: anObject reference: referenceObject
	^ self basicNew 
		initializeRoot: anObject reference: referenceObject;
		yourself