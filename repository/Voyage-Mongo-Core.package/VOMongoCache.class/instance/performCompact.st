private
performCompact 
	| deadKeys |
	
	deadKeys := Set new.
	objects keysAndValuesDo:  [ :key :value | 
		value ifNil: [ deadKeys add: key ] ].
	deadKeys do: [ :each | 
		objects removeKey: each.
		timeStamps removeKey: each ].
	objects compact.
	timeStamps compact.