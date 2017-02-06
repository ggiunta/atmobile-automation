When(/^I am at Create A Journey page$/) do
    @current_page = page(CreateJourneyPage).await(timeout: 30)
end

When(/^I create a Journey from "([^\"]*)" to "([^\"]*)"$/) do |from, to|
    @current_page = @current_page.create(from, to)
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