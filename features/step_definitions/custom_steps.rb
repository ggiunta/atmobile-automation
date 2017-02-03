Given(/^I am about to create a Journey$/) do
    @current_page = page(CreateJourneyPage).await(timeout: 30)
end

When(/^I create a Journey from "([^\"]*)" to "([^\"]*)"$/) do |from, to|
    @current_page = @current_page.create(from, to)
end