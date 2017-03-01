When(/^I create the Journey:$/) do |table|
  journey = table.hashes[0]
  @current_page.create(journey["From"], journey["To"], journey["Name"])
end

When(/^I create the real time board:$/) do |table|
  real_time_board = table.hashes[0]
  @current_page.create(real_time_board["Stop"])
  @current_page = page(ViewRealTimeBoard).await(timeout: 30)
  @current_page.touch_save()
  @current_page = page(SaveStopPopUp).await(timeout: 30)
  @current_page.save(real_time_board["Name"])
  @current_page = page(ViewRealTimeBoard).await(timeout: 30)
end

When(/^I am at Create A Journey page$/) do
  @current_page = page(CreateJourney).await(timeout: 30)
end

When(/^I am at My Journeys page$/) do
  @current_page = page(Journeys).await(timeout: 30)
end

When(/^I press Create A Journey button$/) do
  @current_page.touch_create()
end

When(/^I press create a board button$/) do
  @current_page.touch_create()
  @current_page = page(CreateRealTimeBoard).await(timeout: 30)
end

When(/^I skip the Welcome page$/) do
  step 'I press "Next, Button"'
  step 'I press "Next, Button"'
  step 'I press "Get Started, Button"'
  step 'I wait for 2 seconds'
end

When(/^I view the Journey "([^\"]*)"$/) do |name|
  @current_page.view_journey(name)
end

When(/^I touch back button$/) do
  @current_page.back()
end