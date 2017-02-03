Feature: My Journeys

Scenario: New Journey

	# Make this a reusable step
	When I press "NEXT"
	And I press "NEXT"
	And I press "GET STARTED"
	
	And I press "Create a journey Button"
	
	And I am about to create a Journey
	And I create a Journey from "4 Viaduct Harbour Avenue, Auckland Central" to "Flat 3 137 Jervois Road, Herne Bay"
	
	And I press "CONTINUE"
	
	Then I wait for 10 seconds