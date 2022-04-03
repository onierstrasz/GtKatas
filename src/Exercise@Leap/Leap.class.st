Class {
	#name : #Leap,
	#superclass : #Object,
	#category : #'Exercise@Leap'
}

{ #category : #accessing }
Leap >> leapYear: aYear [

	^ ((aYear rem: 4) = 0 and: [ (aYear rem: 100) ~= 0 ]) or: [ 
		  (aYear rem: 400) = 0 ]
]
