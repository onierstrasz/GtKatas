Class {
	#name : #BaselineOfGtKatas,
	#superclass : #BaselineOf,
	#category : #BaselineOfGtKatas
}

{ #category : #baselines }
BaselineOfGtKatas >> baseline: spec [
	<baseline>
	spec for: #common do: [ spec package: #GtKatas ]
]
