Feature: Deleting tickets
	In order to remove tickets
	As a user
	I want to press a button and make them disappear
	
	Background:
		Given there are the following users:
			| email						| password 	|
			| dheeraj@mobiporter.com	| password 	|	
		And I am signed in as them
		Given there is a project called "TextMate 2"
		And "dheeraj@mobiporter.com" has created a ticket for this project:
			| title				| description 					|
			| Make it shiny!	| Gradients!  Starbusts! Oh my! |
		And I am on the homepage
		When I follow "TextMate 2"
		And I follow "Make it shiny!"
		
	Scenario:
		When I follow "Delete Ticket"
		Then I should see "Ticket has been deleted."
		And I should be on the project page for "TextMate 2"
