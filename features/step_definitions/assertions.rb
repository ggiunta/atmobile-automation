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

Then(/^the real time board routes are displayed$/) do
  @current_page.assert_real_time_board_table()
end