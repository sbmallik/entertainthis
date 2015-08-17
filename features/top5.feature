@front @entertainthis @top5
Feature: Top 5 trending stories
	This module contains the top 5 stories with most concurrent users and this is powered by chartbeat.

Scenario: Navigate to a story 
	Given I am visiting the EntertainThis home front
	Then The top 5 module displays
		And The module contains 5 story headline links
	When I click on a story with random selection in the module
	The corresponding story page displays
