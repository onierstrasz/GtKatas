accessing
of: anInteger
	| result |
	self assert: anInteger isInteger.
	self assert: anInteger >= 0.
	result := ''.
	((anInteger isDivisibleBy: 3) or: [ anInteger asString includes: $3 ])
		ifTrue: [ result := 'fizz' ].
	((anInteger isDivisibleBy: 5) or: [ anInteger asString includes: $5 ])
		ifTrue: [ result := result , 'buzz' ].
	result isEmpty
		ifTrue: [ result := anInteger asString ].
	^ result