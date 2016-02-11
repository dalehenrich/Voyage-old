accessing
at: anId putVersion: aNumber
	self mutex 
		critical: [ timeStamps at: anId put: aNumber ]