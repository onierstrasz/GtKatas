Class {
	#name : #Forth,
	#superclass : #Object,
	#instVars : [
		'stack',
		'words'
	],
	#category : #'Exercise@Forth'
}

{ #category : #accessing }
Forth >> add [
	self assertStackHasTwoValues.
	self push: self pop + self pop
]

{ #category : #accessing }
Forth >> assertStackHasTwoValues [
	self assertStackNotEmpty.
	self
		assert: stack size ~= 1
		description: 'only one value on the stack'
]

{ #category : #accessing }
Forth >> assertStackNotEmpty [
	self assert: stack size > 0 description: 'empty stack'
]

{ #category : #accessing }
Forth >> define: aString [

	"Your evaluator also has to support defining new words using the customary syntax: : word-name definition ;."

	| tokens word command lastWord |
	self assert: aString first = $: description: 'definition must start with :'.
	tokens := (Character space split: aString) select: #isNotEmpty.
	tokens removeFirst.
	self assert: tokens last last = $; description: 'definition must end with ;'.

	word := tokens removeFirst.
	self assert: word first isDigit not description:'illegal operation'.
	
	lastWord := tokens removeLast allButLast. "remove the ;"
	lastWord isNotEmpty ifTrue: [ tokens addLast: lastWord ].
	
	command := Character space join: tokens.
	words at: word asLowercase put: command
]

{ #category : #accessing }
Forth >> divide [
	| numerator denominator |
	self assertStackHasTwoValues.
	denominator := self pop.
	self assert: denominator ~= 0 description: 'divide by zero'.
	numerator := self pop.
	self push: numerator // denominator
]

{ #category : #accessing }
Forth >> doCommand: aWord [

	"Your evaluator has to support the following words:

	+, -, *, / (integer arithmetic)
	DUP, DROP, SWAP, OVER (stack manipulation)
	
	To keep things simple the only data type you need to support is signed integers of at least 16 bits size.

	You should use the following rules for the syntax: a number is a sequence of one or more (ASCII) digits, a word is a sequence of one or more letters, digits, symbols or punctuation that is not a number. (Forth probably uses slightly different rules, but this is close enough.)"

	| word |
	word := aWord asLowercase.
	word first isDigit ifTrue: [ ^ self push: word asNumber ].

	"TODO: handle signed numbers"
	
	words at: word ifPresent: [ :command | ^ self evaluate: command ].

	(word size = 1 and: [ '+-*/' includes: word first ]) ifTrue: [ 
		word first = $+ ifTrue: [ ^ self add ].
		word first = $- ifTrue: [ ^ self subtract ].
		word first = $* ifTrue: [ ^ self multiply ].
		word first = $/ ifTrue: [ ^ self divide ] ].

	word = 'dup' ifTrue: [ ^ self dup ].
	word = 'drop' ifTrue: [ ^ self drop ].
	word = 'swap' ifTrue: [ ^ self swap ].
	word = 'over' ifTrue: [ ^ self over ].

	self error: 'undefined operation'
]

{ #category : #accessing }
Forth >> drop [
	self pop
]

{ #category : #accessing }
Forth >> dup [
	self assertStackNotEmpty.
	self push: self top
]

{ #category : #accessing }
Forth >> evaluate: aString [
	aString first = $:
		ifTrue: [ self define: aString ]
		ifFalse: [ 
			(Character space split: aString) do: [ :word | 
				self doCommand: word ] ]
]

{ #category : #accessing }
Forth >> evaluateInstructions: anArray [
	anArray do: [ :each | self evaluate: each ].
	^ stack asArray
]

{ #category : #accessing }
Forth >> initialize [
	stack := OrderedCollection new.
	words := Dictionary new
]

{ #category : #accessing }
Forth >> multiply [
	self assertStackHasTwoValues.
	self push: self pop * self pop
]

{ #category : #accessing }
Forth >> over [
	self assertStackHasTwoValues.
	self push: (stack at: stack size - 1)
]

{ #category : #accessing }
Forth >> pop [
	self assertStackNotEmpty.
	^ stack removeLast
]

{ #category : #accessing }
Forth >> push: aNumber [
	stack addLast: aNumber
]

{ #category : #accessing }
Forth >> subtract [
	| subtrahend minuend |
	self assertStackHasTwoValues.
	subtrahend := self pop.
	minuend := self pop.
	self push: minuend - subtrahend
]

{ #category : #accessing }
Forth >> swap [
	| top next |
	self assertStackHasTwoValues.
	top := self pop.
	next := self pop.
	self push: top.
	self push: next
]

{ #category : #accessing }
Forth >> top [
	^ stack last
]
