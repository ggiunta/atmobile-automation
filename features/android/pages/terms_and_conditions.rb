class TermsAndConditions < Base

  def title
    "TERMS & CONDITIONS"
  end

  def assert_terms_and_conditions()
    wait_for_element_exists(terms_text)
  end

  def terms_text
    element_marked("The following terms and conditions only apply to the AT Mobile App for smart-phone, tablet, or wearable technology.")
  end

end