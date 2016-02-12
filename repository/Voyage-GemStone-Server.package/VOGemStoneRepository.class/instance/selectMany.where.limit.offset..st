persistence
selectMany: aClass where: aDictionary limit: limit offset: offset
	| selected increment |
	selected := (self selectMany: aClass where: aDictionary) asArray.
	offset > selected size
		ifTrue: [ ^ #() ].
	selected isEmpty
		ifTrue: [ ^ #() ].
	increment := selected size - offset min: limit.
	selected := selected copyFrom: offset + 1 to: offset + increment.
	^ aClass = aClass persistentClass
		ifTrue: [ selected ]
		ifFalse: [ selected select: [ :each | each isKindOf: aClass ] ]