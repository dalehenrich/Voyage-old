persistence
selectOne: aClass where: aDictionary
	(self listOf: aClass)
		do: [ :each | 
			aDictionary
				keysAndValuesDo: [ :key :value | 
					(each instVarNamed: key) = value
						ifTrue: [ ^ each ] ] ].
	^ nil