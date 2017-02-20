class Menu < Base

  def title
    "Menu Button"
  end

  def navigate_to_my_journeys()
    touch(menu_button)
    touch(element_by_content_desc("My journeys Button"))
    sleep(2)
  end

  def navigate_to_terms_and_conditions()
    touch(menu_button)
    touch(element_by_content_desc("Terms and conditions Button"))
    sleep(2)
  end

  def menu_button
    element_by_content_desc("Menu Button")
  end

end