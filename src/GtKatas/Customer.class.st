Class {
	#name : #Customer,
	#superclass : #Object,
	#instVars : [
		'json',
		'keypadMapping'
	],
	#category : #'GtKatas-Noah'
}

{ #category : #accessing }
Customer >> gtJSONfor: aView [
<gtView>
^ aView forward
	title: 'JSON';
	priority: 10;
	object: [ json ];
	view: #gtItemsFor:
]

{ #category : #accessing }
Customer >> json [
	^ json
]

{ #category : #accessing }
Customer >> json: aString [
	json := STON fromString: aString
]

{ #category : #accessing }
Customer >> keypadMapping [
	keypadMapping
		ifNil: [ keypadMapping := ((($A to: $R)
					collect: [ :each | each -> ((each asciiValue - 59) // 3) ]) , {$S -> 7}
					, (($T to: $Y) collect: [ :each | each -> ((each asciiValue - 60) // 3) ])
					, {$Z -> 9}) asDictionary ].
	^ keypadMapping
]

{ #category : #accessing }
Customer >> nameAsNumber [
	^ (((self json at: 'name') select: #isLetter) collect: #asUppercase)
		collect: [ :each | (self keypadMapping at: each) asCharacterDigit ]
]

{ #category : #accessing }
Customer >> nameMatchesPhoneNumber [
	^ self nameAsNumber = (self phone select: #isDigit)
]

{ #category : #accessing }
Customer >> phone [
	^ self json at: 'phone'
]

{ #category : #accessing }
Customer >> rawData: each [ 
]
