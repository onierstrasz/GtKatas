accessing
of: anInteger
	self assert: anInteger isInteger.
	self assert: anInteger >= 0.
	^ anInteger asString