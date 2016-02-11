accessing
flush
	self mutex 
		critical: [
			objects := WeakValueDictionary new.
			timeStamps := Dictionary new ].