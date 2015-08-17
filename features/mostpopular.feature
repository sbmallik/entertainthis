@selenium @usat @front @ET @mostPopular
Feature: Most popular module
	This module contains the top 10 most shared ET! stories over the past week. 

@mostpopular-items
Scenario: Most popular module properties
	Given I am visiting the EntertainThis home front
	Then The most popular module displays
		And The module contains 10 story headline with image links

@mostpopular-nav
Scenario Outline: Navigate to a story
	When I click on story "<story_num>" in the module
	The corresponding story page displays
	Examples:
	| story_num	|
	| 1			|
	| 10		|
