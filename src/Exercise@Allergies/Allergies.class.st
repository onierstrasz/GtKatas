Class {
	#name : #Allergies,
	#superclass : #Object,
	#category : #'Exercise@Allergies'
}

{ #category : #accessing }
Allergies >> allergicToItem: anItem forScore: aScore [
	"If we are allergic, then the corresponding bit for this item in the score is on."
	^ (aScore bitAnd: (self scoreFor: anItem)) ~= 0
]

{ #category : #accessing }
Allergies >> allergyList [
	^ #( 'eggs' 'peanuts' 'shellfish' 'strawberries' 'tomatoes'
	     'chocolate' 'pollen' 'cats' )
]

{ #category : #accessing }
Allergies >> allergyListForScore: aScore [
	"Select the allergies in the list which have a bit on in the score."
	^ self allergyList withIndexSelect: [ :allergy :index | 
		  (aScore bitAt: index) = 1 ]
]

{ #category : #accessing }
Allergies >> scoreFor: anItem [
	"The scores for allergies in the list are powers of 2."
	^ 2 raisedTo: (self allergyList indexOf: anItem) - 1
]
