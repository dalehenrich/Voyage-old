persistence
selectMany: aClass where: aDictionary
	| selected |
	selected := self listOf: aClass.
	^ aDictionary isEmpty
		ifTrue: [ selected ]
		ifFalse: [ 
			selected
				select: [ :each | 
					| select |
					select := false.
					aDictionary
						keysAndValuesDo: [ :key :value | 
							select
								ifFalse: [ select := (each instVarNamed: key) = value ] ].
					select ] ]