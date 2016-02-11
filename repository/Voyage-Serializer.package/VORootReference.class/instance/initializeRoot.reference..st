initialization
initializeRoot: anObject reference: referenceObject 
	self initialize.
	root := anObject.
	reference := OID nextOID.