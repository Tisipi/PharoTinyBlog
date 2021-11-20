Class {
	#name : #TBPostTest,
	#superclass : #TestCase,
	#category : #'TinyBlog-Tests'
}

{ #category : #tests }
TBPostTest >> testNewPostClassified [
	| post |
	post := TBPost title: 'First Post' text: 'My first tiny post inside Pharo' category: 'Pharo'.
	
	self assert: post title equals: 'First Post'.
	self assert: post text equals: 'My first tiny post inside Pharo'.
	self assert: post date equals: Date today.
	self assert: post category equals: 'Pharo'. 
	self deny: post isVisible.
]

{ #category : #tests }
TBPostTest >> testNewPostUnclassified [
	| post |
	post := TBPost title: 'First Post' text: 'My first tiny post inside Pharo'.
	
	self assert: post title equals: 'First Post'.
	self assert: post text equals: 'My first tiny post inside Pharo'.
	self assert: post date equals: Date today.
	self assert: post isUnclassified. 
	self deny: post isVisible.
]

{ #category : #tests }
TBPostTest >> testNewPostVisible [
	| post |
	post := TBPost title: 'First Post' text: 'My first tiny post inside Pharo' category: 'Pharo'.
	post beVisible.
	
	self assert: post title equals: 'First Post'.
	self assert: post text equals: 'My first tiny post inside Pharo'.
	self assert: post date equals: Date today.
	self assert: post category equals: 'Pharo'. 
	self assert: post isVisible.
]
