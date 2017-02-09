When(/^I am at Create A Journey page$/) do
  @current_page = page(CreateJourneyPage).await(timeout: 30)
end

When(/^I create the Journey:$/) do |table|
  journey = table.hashes[0]
  @current_page = @current_page.create(journey["From"], journey["To"], journey["Name"])
end

When(/^I am at My Journeys page$/) do
  @current_page = page(MyJourneysPage).await(timeout: 30)
end

When(/^I press Create A Journey button$/) do
  @current_page = @current_page.touch_create()
end

When(/^I skip the Welcome page$/) do
  step 'I press "Next, Button"'
  step 'I press "Next, Button"'
  step 'I press "Get Started, Button"'
end

Then(/^the Sort By Departure Time button is displayed$/) do
  @current_page = page(JourneyResults).await(timeout: 30)
  @current_page = @current_page.assert_departure_time_button()
end