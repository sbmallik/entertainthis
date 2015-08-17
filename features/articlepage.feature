@selenium @usat @front @ET @article
Feature: ET article page 
	The ET article contains certain standard features and there are analogus to an USAT asset.

@article-feature
Scenario: ET article page standard features
	Given I am visiting a standard ET article page
	Then The article page contains the following items:
	| et_article_item	|
	| Title				|
	| Timestamp			|
	| byline			|
	| facebook			|
	| twitter			|
	| email				|

@article-staff
Scenario: Staff bio page
	Given I am visiting a standard ET article page
	When I click the author's name on the byline
	Then I should be taken to that page

@article-inline-share
Scenario: Inline twitter link
	Given I am visiting a standard ET article page
	When I click the "<share_media>" link in inline share module
	Then The "<share_media>" share page opens in a new tab
	| share_media	|
	| facebook		|
	| twitter		|
	| email			|
