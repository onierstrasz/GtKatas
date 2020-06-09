accessing
fbTo16
	<gtExample>
	self assert: (FizzBuzz of: 1) equals: '1'.
	self assert: (FizzBuzz of: 2) equals: '2'.
	self assert: (FizzBuzz of: 3) equals: 'fizz'.
	self assert: (FizzBuzz of: 4) equals: '4'.
	self assert: (FizzBuzz of: 5) equals: 'buzz'.
	self assert: (FizzBuzz of: 6) equals: 'fizz'.
	self assert: (FizzBuzz of: 7) equals: '7'.
	self assert: (FizzBuzz of: 8) equals: '8'.
	self assert: (FizzBuzz of: 9) equals: 'fizz'.
	self assert: (FizzBuzz of: 10) equals: 'buzz'.
	self assert: (FizzBuzz of: 11) equals: '11'.
	self assert: (FizzBuzz of: 12) equals: 'fizz'.
	self assert: (FizzBuzz of: 13) equals: '13'.
	self assert: (FizzBuzz of: 14) equals: '14'.
	self assert: (FizzBuzz of: 15) equals: 'fizzbuzz'.
	self assert: (FizzBuzz of: 16) equals: '16'.
	^ self to: 16