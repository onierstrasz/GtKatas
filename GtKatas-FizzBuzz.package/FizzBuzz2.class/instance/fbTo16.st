accessing
fbTo16
	<gtExample>
	self assert: (FizzBuzz2 of: 1) equals: '1'.
	self assert: (FizzBuzz2 of: 2) equals: '2'.
	self assert: (FizzBuzz2 of: 3) equals: 'fizz'.
	self assert: (FizzBuzz2 of: 4) equals: '4'.
	self assert: (FizzBuzz2 of: 5) equals: 'buzz'.
	self assert: (FizzBuzz2 of: 6) equals: 'fizz'.
	self assert: (FizzBuzz2 of: 7) equals: '7'.
	self assert: (FizzBuzz2 of: 8) equals: '8'.
	self assert: (FizzBuzz2 of: 9) equals: 'fizz'.
	self assert: (FizzBuzz2 of: 10) equals: 'buzz'.
	self assert: (FizzBuzz2 of: 11) equals: '11'.
	self assert: (FizzBuzz2 of: 12) equals: 'fizz'.
	self assert: (FizzBuzz2 of: 13) equals: 'fizz'.
	self assert: (FizzBuzz2 of: 14) equals: '14'.
	self assert: (FizzBuzz2 of: 15) equals: 'fizzbuzz'.
	self assert: (FizzBuzz2 of: 16) equals: '16'.
	^ self class to: 16