Class {
	#name : #MatrixReader,
	#superclass : #Object,
	#instVars : [
		'matrix'
	],
	#category : #'Exercise@Matrix'
}

{ #category : #accessing }
MatrixReader >> input: stringInput atColumn: columnNumber [

]

{ #category : #accessing }
MatrixReader >> input: stringInput atRow: rowNumber [

	self parseInput: stringInput
]

{ #category : #accessing }
MatrixReader >> parseInput: stringInput [
	matrix := (Character cr split: stringInput) collect: [ :each | 
	Character space split: each ]
]
