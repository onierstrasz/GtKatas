accessing
fbExtras
	<gtExample>
	self assert: (FizzBuzz of: 31) equals: '31'.
	self assert: (FizzBuzz of: 23) equals: '23'.
	self assert: (FizzBuzz of: 51) equals: 'fizz'.
	self assert: (FizzBuzz of: 52) equals: '52'.
	self assert: (FizzBuzz of: 53) equals: '53'.
	self assert: (FizzBuzz2 of: 31) equals: 'fizz'.
	self assert: (FizzBuzz2 of: 23) equals: 'fizz'.
	self assert: (FizzBuzz2 of: 51) equals: 'fizzbuzz'.
	self assert: (FizzBuzz2 of: 52) equals: 'buzz'.
	self assert: (FizzBuzz2 of: 53) equals: 'fizzbuzz'.
	^ self class to: 60