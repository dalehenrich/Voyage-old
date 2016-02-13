private
execute: aBlock retries: retriesLeft
	aBlock 
		on: NetworkError, BSONError, PrimitiveFailed, ConnectionClosed, VOTugrikConnectionError
		do: [ :e | 
			self recoverFromError: e.
			((self isRetryError: e) and: [ retriesLeft > 0 ])
				ifTrue: [ self execute: aBlock retries: retriesLeft - 1 ]
				ifFalse: [ e resignalAs: VOTugrikConnectionError new] ]