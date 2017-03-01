@skip_welcome_page
Feature: My Journeys

Scenario: Search Journey

  When I navigate to my journeys page
  And I touch create a journey button
  And I create the journey:
    | From                                       | To                                 | Name |
    | 4 Viaduct Harbour Avenue, Auckland Central | Flat 3 137 Jervois Road, Herne Bay |      |
  Then the sort by departure time button is displayed

Scenario: Save Journey

  When I navigate to my journeys page
  And I touch create a journey button
  And I create the journey:
    | From                                       | To                                 | Name |
    | 4 Viaduct Harbour Avenue, Auckland Central | Flat 3 137 Jervois Road, Herne Bay | Dog  |
  Then journey "Dog" is displayed

Scenario: View saved Journey

  When I navigate to my journeys page
  And I touch create a journey button
  And I create the journey:
    | From                                       | To                                 | Name |
    | 4 Viaduct Harbour Avenue, Auckland Central | Flat 3 137 Jervois Road, Herne Bay | Cat  |
  And journey "Cat" is displayed
  And I touch back button
  And I navigate to my journeys page
  And I view the journey "Cat"
  Then journey "Cat" is displayed