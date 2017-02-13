Before ('@skip_welcome_page') do
  unless $welcome_page_was_skipped
    step 'I skip the Welcome page'
    $welcome_page_was_skipped = true
  end
end