@welcome_page
Feature: My Journeys

Scenario: New Journey

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
    | From                                       | To                                 | Name         |
    | 4 Viaduct Harbour Avenue, Auckland Central | Flat 3 137 Jervois Road, Herne Bay | Test Journey |

  Then the Sort By Departure Time button is displayed