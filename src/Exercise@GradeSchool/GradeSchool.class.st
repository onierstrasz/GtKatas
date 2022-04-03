Class {
	#name : #GradeSchool,
	#superclass : #Object,
	#instVars : [
		'students'
	],
	#category : #'Exercise@GradeSchool'
}

{ #category : #accessing }
GradeSchool >> addStudents: studentGradeArray [
	studentGradeArray do: [ :each | 
		| student grade studentsInGrade |
		student := each first.
		grade := each second.
		studentsInGrade := students
			                   at: grade
			                   ifAbsentPut: [ OrderedCollection new ].
		studentsInGrade addLast: student ]
]

{ #category : #accessing }
GradeSchool >> desiredGrade: aGrade [
	^ (students at: aGrade ifAbsent: #(  )) asArray sorted
]

{ #category : #accessing }
GradeSchool >> emptyRoster [
	<gtExample>
	| result |
	result := GradeSchool new.
	self assert:  self roster isEmpty.
	^ result
]

{ #category : #accessing }
GradeSchool >> grade2 [
	<gtExample>
	| result |
	result := self emptyRoster.
	result addStudents: #( #( 'Blair' 2 ) #( 'James' 2 ) #( 'Paul' 2 ) ).
	self assert: result roster equals: #('Blair' 'James' 'Paul').
	^ result
]

{ #category : #accessing }
GradeSchool >> grades1and2 [
	<gtExample>
	| result |
	result := self emptyRoster.
	result addStudents:
		#( #( 'Peter' 2 ) #( 'Anna' 1 ) #( 'Barb' 1 ) #( 'Zoe' 2 )
		   #( 'Alex' 2 ) #( 'Jim' 3 ) #( 'Charlie' 1 ) ).
	self
		assert: result roster
		equals: #( 'Anna' 'Barb' 'Charlie' 'Alex' 'Peter' 'Zoe' 'Jim' ).
	self
		assert: (result desiredGrade: 1)
		equals: #( 'Anna' 'Barb' 'Charlie' ).
	^ result
]

{ #category : #accessing }
GradeSchool >> initialize [
	"students maps grades to arrays of students"
	students := Dictionary new
]

{ #category : #accessing }
GradeSchool >> roster [
	^ ((students associations sorted: [ :a :b | a key < b key ]) 
		  collect: [ :assoc | assoc value sorted ]) flatten
]
