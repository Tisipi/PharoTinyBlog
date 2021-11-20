"
Tiny Blog
"
Class {
	#name : #TBBlog,
	#superclass : #Object,
	#instVars : [
		'posts'
	],
	#classInstVars : [
		'uniqueInstance'
	],
	#category : #TinyBlog
}

{ #category : #action }
TBBlog class >> current [ 
	^ uniqueInstance ifNil: [ uniqueInstance := self new ]
]

{ #category : #initialization }
TBBlog class >> initialize [
	self reset
]

{ #category : #action }
TBBlog class >> reset [
	uniqueInstance := nil
]

{ #category : #action }
TBBlog >> allBlogPosts [
	^ posts
]

{ #category : #initialization }
TBBlog >> initialize [
	super initialize.
	posts := OrderedCollection new
]

{ #category : #action }
TBBlog >> removeAllPosts [
	posts := OrderedCollection new.
]

{ #category : #access }
TBBlog >> size [
	^ posts size
]

{ #category : #action }
TBBlog >> writeBlogPost: aPost [ 
	posts add: aPost
]
