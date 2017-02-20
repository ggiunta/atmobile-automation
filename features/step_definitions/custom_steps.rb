When(/^I am at Create A Journey page$/) do
  @current_page = page(CreateJourney).await(timeout: 30)
end

When(/^I create the Journey:$/) do |table|
  journey = table.hashes[0]
  @current_page.create(journey["From"], journey["To"], journey["Name"])
end

When(/^I am at My Journeys page$/) do
  @current_page = page(MyJourneys).await(timeout: 30)
end

When(/^I press Create A Journey button$/) do
  @current_page.touch_create()
end

When(/^I skip the Welcome page$/) do
  step 'I press "Next, Button"'
  step 'I press "Next, Button"'
  step 'I press "Get Started, Button"'
  step 'I wait for 2 seconds'
end

When(/^I navigate to My Journeys page$/) do
  @current_page = page(Menu).await(timeout: 30)
  @current_page.navigate_to_my_journeys()
  @current_page = page(MyJourneys).await(timeout: 30)
end

When(/^I navigate to Terms and conditions page$/) do
  @current_page = page(Menu).await(timeout: 30)
  @current_page.navigate_to_terms_and_conditions()
  @current_page = page(TermsAndConditions).await(timeout: 30)
end

When(/^I view the Journey "([^\"]*)"$/) do |name|
  @current_page.view_journey(name)
end

When(/^I touch back button$/) do
  @current_page.back()
end

Then(/^the Sort By Departure Time button is displayed$/) do
  @current_page = page(Journey).await(timeout: 30)
  @current_page.assert_departure_time_button()
end

Then(/^Journey "([^\"]*)" is displayed$/) do |name|
  @current_page = page(Journey).await(timeout: 30)
  @current_page.assert_journey_is_displayed(name)
end

Then(/^Terms and conditions are displayed$/) do
  @current_page.assert_terms_and_conditions_are_displayed()
end