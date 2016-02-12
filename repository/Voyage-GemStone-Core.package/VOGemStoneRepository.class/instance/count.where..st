persistence
count: aClass where: aDictionary
	^ (self selectMany: aClass where: aDictionary) size.