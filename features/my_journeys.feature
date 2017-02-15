@skip_welcome_page
Feature: My Journeys

Scenario: Search Journey

  When I am at My Journeys page
  And I press Create A Journey button

  And I am at Create A Journey page
  And I create the Journey:
    | From                                       | To                                 | Name |
    | 4 Viaduct Harbour Avenue, Auckland Central | Flat 3 137 Jervois Road, Herne Bay |      |

  Then the Sort By Departure Time button is displayed

Scenario: Save Journey

  When I am at My Journeys page
  And I press Create A Journey button

  And I am at Create A Journey page
  And I create the Journey:
    | From                                       | To                                 | Name |
    | 4 Viaduct Harbour Avenue, Auckland Central | Flat 3 137 Jervois Road, Herne Bay | Dog  |

  Then Journey "Dog" is displayed

@dev
Scenario: View saved Journey

  When I am at My Journeys page
  And I press Create A Journey button

  And I am at Create A Journey page
  And I create the Journey:
    | From                                       | To                                 | Name |
    | 4 Viaduct Harbour Avenue, Auckland Central | Flat 3 137 Jervois Road, Herne Bay | Cat  |
  And Journey "Cat" is displayed

  And I touch back button

  And I navigate to My Journeys page
  And I view the Journey "Cat"

  Then Journey "Cat" is displayed