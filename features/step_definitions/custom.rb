When(/^I create the journey:$/) do |table|
  journey = table.hashes[0]
  @current_page.create(journey["From"], journey["To"], journey["Name"])
  @current_page = page(ViewJourney).await(timeout: 30)
end

When(/^I create the real time board:$/) do |table|
  real_time_board = table.hashes[0]
  @current_page.create(real_time_board["Stop"])
  page(ViewRealTimeBoard).await(timeout: 30).touch_save()
  page(SaveStopPopUp).await(timeout: 30).save(real_time_board["Name"])
  @current_page = page(ViewRealTimeBoard).await(timeout: 30)
end

When(/^I touch create a journey button$/) do
  @current_page.touch_create()
  @current_page = page(CreateJourney).await(timeout: 30)
end

When(/^I touch create a board button$/) do
  @current_page.touch_create()
  @current_page = page(CreateRealTimeBoard).await(timeout: 30)
end

When(/^I view the journey "([^\"]*)"$/) do |name|
  @current_page.view_journey(name)
  @current_page = page(ViewJourney).await(timeout: 30)
end

When(/^I touch back button$/) do
  @current_page.back()
end

When(/^I skip the Welcome page$/) do
  step 'I press "Next, Button"'
  step 'I press "Next, Button"'
  step 'I press "Get Started, Button"'
  step 'I wait for 2 seconds'
end