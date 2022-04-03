Class {
	#name : #ReverseString,
	#superclass : #Object,
	#category : #'Exercise@ReverseString'
}

{ #category : #accessing }
ReverseString >> reverseValue: aString [
	| chars resultStream |
	resultStream := WriteStream with: ''.
	chars := aString asOrderedCollection.
	[ chars notEmpty ] whileTrue: [ 
		resultStream nextPut: chars removeLast ].
	^ resultStream contents
]
