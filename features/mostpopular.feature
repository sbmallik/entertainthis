@front @entertainthis @mostPopular
Feature: Most popular module
	This module contains the top 10 most shared ET! stories over the past week. 

Scenario: Most popular module properties
	Given I am visiting the EntertainThis home front
	Then The most popular module displays
		And The module contains 10 story headline with image links

Scenario Outline: Navigate to a story
	When I click on story "1" in the module
	The corresponding story page displays
	Examples:
	| story_num	|
	| 1			|
	| 10		|
