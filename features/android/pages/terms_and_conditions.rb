class TermsAndConditions < Base

  def title
    "TERMS & CONDITIONS"
  end

  def assert_terms_and_conditions_are_displayed
    wait_for_element_exists(terms_text)
  end

  def terms_text
    element_marked("In these terms and conditions, unless the context otherwise requires:")
  end

end