"
This class contains tests for Tiny Blog blog.
"
Class {
	#name : #TBBlogTest,
	#superclass : #TestCase,
	#instVars : [
		'blog',
		'post',
		'first'
	],
	#category : #'TinyBlog-Tests'
}

{ #category : #running }
TBBlogTest >> setUp [
	"
	The fixture of the tests:
	- Erases the blog content.
	- Adds one first post.
	- Creates another temporary post that is not saved.
	"
	super setUp.
	blog := TBBlog current.
	blog removeAllPosts.
	first := TBPost title: 'First Post' text: 'My first post for testing purposes'  category: 'Introduction'.
	blog writeBlogPost: first.
	
	post := (TBPost title: 'Another Post' text: 'Another post for testing purposes' category: 'Dummy') beVisible.
	
	
	
]

{ #category : #running }
TBBlogTest >> tearDown [
 	"
	Cleanup all test resources
	"
	TBBlog reset.
	super tearDown.	
	
	
]

{ #category : #tests }
TBBlogTest >> testAddBlogPost [
	blog writeBlogPost: post.
	self assert: blog size equals: 2
]

{ #category : #tests }
TBBlogTest >> testAllBlogPosts [
	blog writeBlogPost: post.
	self assert: blog allBlogPosts size equals: 2
]

{ #category : #tests }
TBBlogTest >> testRemoveAllBlogPosts [
	self assert: blog size equals: 1.
	blog removeAllPosts.
	self assert: blog size equals: 0.

]

{ #category : #tests }
TBBlogTest >> testSize [
	self assert: blog size equals: 1.

]
