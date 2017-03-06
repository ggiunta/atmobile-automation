require 'calabash-android/abase'

Before('@skip_welcome_page') do
  sleep(5)
  if element_exists("* marked:'Next, Button'")
    step 'I skip the welcome page'
  end
end