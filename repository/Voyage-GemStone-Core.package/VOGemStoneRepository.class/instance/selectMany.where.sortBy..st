persistence
selectMany: aClass where: aDictionary sortBy: sortBlock
	| selectResult |
	selectResult := self selectMany: aClass where: aDictionary.
	^ sortBlock ifNotNil: [ (selectResult asSortedCollection: sortBlock) asOrderedCollection ] ifNil: [ selectResult ]