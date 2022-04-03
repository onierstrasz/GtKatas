Class {
	#name : #TwoFer,
	#superclass : #Object,
	#category : #'Exercise@TwoFer'
}

{ #category : #accessing }
TwoFer >> who [

	^ self who: 'you'
]

{ #category : #accessing }
TwoFer >> who: aName [

	^ 'One for ' , aName , ', one for me.'
]
