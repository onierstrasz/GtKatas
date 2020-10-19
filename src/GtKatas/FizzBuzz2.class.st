"
!!Stage 2 - new requirements

- A number is fizz if it is divisible by 3 or if it has a 3 in it
- A number is buzz if it is divisible by 5 or if it has a 5 in it

 
"
Class {
	#name : #FizzBuzz2,
	#superclass : #FizzBuzz,
	#category : #'GtKatas-FizzBuzz'
}

{ #category : #accessing }
FizzBuzz2 class >> of: anInteger [
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
]

{ #category : #accessing }
FizzBuzz2 >> fbExtras [
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
]

{ #category : #accessing }
FizzBuzz2 >> fbTo16 [
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
]
