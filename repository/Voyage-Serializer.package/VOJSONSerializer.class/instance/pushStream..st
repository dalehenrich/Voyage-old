private
pushStream: aBlock 
	| oldStream result |
	
	oldStream := stream.
	[	
		stream := OrderedCollection new writeStream. 
		aBlock value.
		result := stream contents ]
	ensure: [ 
		stream := oldStream ].
	
	^ result	