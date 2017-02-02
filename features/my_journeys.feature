Feature: My Journeys

Scenario: New Journey

	# Make this a reusable step
	When I press "NEXT"
	And I press "NEXT"
	And I press "GET STARTED"
	
	And I press "Create a journey Button"
	
	And I press "Clear, button"
	And I enter "4 Viaduct Harbour Avenue" into "Enter location..."
	And I press "4 Viaduct Harbour Avenue, Auckland Central, selectable"
	
	And I press "Enter destination..., click to modify, button"
	And I enter "3/137 Jervois Road, Herne Bay" into "Enter destination..."
	And I press "Flat 3 137 Jervois Road, Herne Bay, selectable"
	
	And I press "CONTINUE"
	
	Then I wait for 10 seconds