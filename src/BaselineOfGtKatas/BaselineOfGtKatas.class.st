Class {
	#name : #BaselineOfGtKatas,
	#superclass : #BaselineOf,
	#category : #BaselineOfGtKatas
}

{ #category : #accessing }
BaselineOfGtKatas class >> loadLepiter [
	| currentProperties |
	currentProperties := LeDatabasesRegistry defaultLogicalDatabase properties.
	currentProperties
		addRegisteredDirectory: FileLocator imageDirectory / 'pharo-local' / 'iceberg' / 'onierstrasz' / 'GtKatas' / 'lepiter'.
	LeDatabasesRegistry default defaultLogicalDatabase reload
]

{ #category : #baselines }
BaselineOfGtKatas >> baseline: spec [
	<baseline>
	spec for: #common do: [ spec package: #GtKatas ]
]
