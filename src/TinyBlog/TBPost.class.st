"
Tiny Blog Post
"
Class {
	#name : #TBPost,
	#superclass : #Object,
	#instVars : [
		'title',
		'text',
		'date',
		'category',
		'visible'
	],
	#category : #TinyBlog
}

{ #category : #'instance creation' }
TBPost class >> title: aTitle text: aText [
	^ self new
			title: aTitle;
			text: aText;
			yourself
]

{ #category : #'instance creation' }
TBPost class >> title: aTitle text: aText category: aCategory [ 
	^ (self title: aTitle text: aText)
				category: aCategory;
				yourself
]

{ #category : #'as yet unclassified' }
TBPost class >> unclassifiedTag [
	^ 'Unclassified'
]

{ #category : #action }
TBPost >> beNotVisible [
	self visible: false

]

{ #category : #action }
TBPost >> beVisible [
	self visible: true
]

{ #category : #accessing }
TBPost >> category [
	^ category
]

{ #category : #accessing }
TBPost >> category: anObject [
	category := anObject
]

{ #category : #accessing }
TBPost >> date [
	^ date
]

{ #category : #accessing }
TBPost >> date: aData [
	date := aData
]

{ #category : #action }
TBPost >> initialize [
	super initialize.
	self date: Date today.
	self category: (self class unclassifiedTag).
	self beNotVisible.
	
]

{ #category : #action }
TBPost >> isUnclassified [
	^ self category = self class unclassifiedTag.
]

{ #category : #action }
TBPost >> isVisible [
	^ self visible
]

{ #category : #accessing }
TBPost >> text [
	^ text
]

{ #category : #accessing }
TBPost >> text: aString [
	text := aString
]

{ #category : #accessing }
TBPost >> title [
	^ title
]

{ #category : #accessing }
TBPost >> title: aString [
	title := aString
]

{ #category : #accessing }
TBPost >> visible [
	^ visible
]

{ #category : #accessing }
TBPost >> visible: aBoolean [
	visible := aBoolean
]
