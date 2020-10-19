"
See: 
[[[
WebBrowser openOn: 'https://codingdojo.org/kata/FizzBuzz/'
]]]

!!Problem Description

Imagine the scene. You are eleven years old, and in the five minutes before the end of the lesson, your Maths teacher decides he should make his class more “fun” by introducing a “game”. He explains that he is going to point at each pupil in turn and ask them to say the next number in sequence, starting from one. The “fun” part is that if the number is divisible by three, you instead say “Fizz” and if it is divisible by five you say “Buzz”. So now your maths teacher is pointing at all of your classmates in turn, and they happily shout “one!”, “two!”, “Fizz!”, “four!”, “Buzz!”… until he very deliberately points at you, fixing you with a steely gaze… time stands still, your mouth dries up, your palms become sweatier and sweatier until you finally manage to croak “Fizz!”. Doom is avoided, and the pointing finger moves on.

So of course in order to avoid embarassment infront of your whole class, you have to get the full list printed out so you know what to say. Your class has about 33 pupils and he might go round three times before the bell rings for breaktime. Next maths lesson is on Thursday. Get coding!

Write a program that prints the numbers from 1 to 100. But for multiples of three print “Fizz” instead of the number and for the multiples of five print “Buzz”. For numbers which are multiples of both three and five print “FizzBuzz “.

Sample output:

1
2
Fizz
4
Buzz
Fizz
7
8
Fizz
Buzz
11
Fizz
13
14
FizzBuzz
16
17
Fizz
19
Buzz
... etc up to 100]]]


"
Class {
	#name : #FizzBuzz,
	#superclass : #Object,
	#category : #'GtKatas-FizzBuzz'
}

{ #category : #accessing }
FizzBuzz class >> of: anInteger [
	| result |
	self assert: anInteger isInteger.
	self assert: anInteger >= 0.
	result := ''.
	(anInteger isDivisibleBy: 3)
		ifTrue: [ result := 'fizz' ].
	(anInteger isDivisibleBy: 5)
		ifTrue: [ result := result , 'buzz' ].
	result isEmpty
		ifTrue: [ result := anInteger asString ].
	^ result
]

{ #category : #accessing }
FizzBuzz class >> to: maxVal [
	self assert: maxVal isInteger.
	self assert: maxVal >= 0.
	^ Character cr
		join: ((1 to: maxVal) collect: [ :each | FizzBuzz of: each ])
]

{ #category : #accessing }
FizzBuzz >> fbTo100 [
	<gtExample>
	^ FizzBuzz to: 100
]

{ #category : #accessing }
FizzBuzz >> fbTo16 [
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
	^ self class to: 16
]
