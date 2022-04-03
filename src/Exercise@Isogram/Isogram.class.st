Class {
	#name : #Isogram,
	#superclass : #Object,
	#category : #'Exercise@Isogram'
}

{ #category : #accessing }
Isogram >> isIsogramPhrase: aString [
	"asSet will remove duplicates. If the set and the bag are equal, there are no duplicates."
	| normalized |
	normalized := aString onlyLetters asLowercase.
	^ normalized asSet asBag = normalized asBag
]
