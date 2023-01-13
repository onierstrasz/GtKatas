Class {
	#name : #Directory,
	#superclass : #Object,
	#instVars : [
		'data'
	],
	#category : #'GtKatas-Noah'
}

{ #category : #accessing }
Directory >> data [
	^ data
]

{ #category : #accessing }
Directory >> data: aCollection [
	data := aCollection
]

{ #category : #accessing }
Directory >> gtCustomersFor: aView [
	<gtView>
	^ aView columnedList
		title: 'Customers';
		priority: 10;
		items: [ data ];
		column: 'Customer' text: [ :each | each json at: 'name' ];
		column: 'ID' text: [ :each | each json at: 'customerid' ];
		column: 'Phone' text: [ :each | each json at: 'phone' ];
		column: 'Address' text: [ :each | each json at: 'address' ];
		column: 'City' text: [ :each | each json at: 'citystatezip' ];
		column: 'Birthdate' text: [ :each | each json at: 'birthdate' ]
]

{ #category : #accessing }
Directory >> gtNameAsNumberFor: aView [
	<gtView>
	^ aView columnedList
		title: 'Name as Number';
		priority: 20;
		items: [ data ];
		column: 'Customer' text: [ :each | each json at: 'name' ];
		column: 'Phone' text: [ :each | each json at: 'phone' ];
		column: 'Name as Number' text: [ :each | each nameAsNumber ]
]
