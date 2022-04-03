Class {
	#name : #Grains,
	#superclass : #Object,
	#category : #'Exercise@Grains'
}

{ #category : #accessing }
Grains >> atSquare: squareNumber [
	self
		assert: (squareNumber >= 1 and: [ squareNumber <= 64 ])
		description: 'square must be between 1 and 64'.
	^ 2 raisedTo: squareNumber - 1
]

{ #category : #accessing }
Grains >> total [

	"The total number of grains is the sum of 2^n from 0 to 63, or 2^64 - 1"

	^ (2 raisedTo: 64) - 1
]
