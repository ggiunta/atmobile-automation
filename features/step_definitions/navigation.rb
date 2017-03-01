When(/^I navigate to my journeys page$/) do
  page(Menu).await(timeout: 30).navigate_to_my_journeys()
  @current_page = page(Journeys).await(timeout: 30)
end

When(/^I navigate to terms and conditions page$/) do
  page(Menu).await(timeout: 30).navigate_to_terms_and_conditions()
  @current_page = page(TermsAndConditions).await(timeout: 30)
end

When(/^I navigate to real time boards page$/) do
  page(Menu).await(timeout: 30).navigate_to_real_time_boards()
  @current_page = page(RealTimeBoards).await(timeout: 30)
end