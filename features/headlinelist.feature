@selenium @usat @front @ET @headline-list
Feature: Headline list module
	The Headline list module contains a list of ET! stories in reverse chronological order.

@hl-properties
Scenario: Headline list properties
	Given I am visiting ET! home front
	Then The headline list module displays
		And Upto 18 stories display in the module
		And The next story with respect to a random selected story contains an earlier time stamp
		And Each story link contains the following:
		| story_link_items		|
		| thumbnail				|
		| title					|
		| category				|
		| timestamp				|
		| story_chatter			|

@hl-navigation
Scenario: Headline list navigation
	Given I am visiting ET! home front
	When I click a random selected story link
	Then The corresponding story page displays

@hl-show-more
Scenario: Show more button functionality
	Given I am visting ET! home front
		And At least 19 stories exists in the module
	When I click on show more button
	Then The module reloads with 18 more stories
