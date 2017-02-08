Feature: My Journeys

Scenario: New Journey

	When I skip the Welcome page
	
	And I am at My Journeys page
	And I press Create A Journey button
	
	And I am at Create A Journey page
	And I create a Journey from "4 Viaduct Harbour Avenue, Auckland Central" to "Flat 3 137 Jervois Road, Herne Bay"

	Then the Sort By Departure Time button is displayed