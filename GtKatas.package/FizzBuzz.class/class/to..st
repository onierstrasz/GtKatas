accessing
to: maxVal
	self assert: maxVal isInteger.
	self assert: maxVal >= 0.
	^ Character cr
		join: ((1 to: maxVal) collect: [ :each | FizzBuzz of: each ])