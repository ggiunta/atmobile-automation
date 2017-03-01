class Menu < Base

  def title
    "Menu Button"
  end

  def navigate_to_my_journeys()
    touch(menu_button)
    touch(my_journeys_button)
    sleep(2)
  end

  def navigate_to_terms_and_conditions()
    touch(menu_button)
    touch(terms_and_conditions_button)
    sleep(2)
  end

  def navigate_to_real_time_boards()
    touch(menu_button)
    touch(real_time_boards_button)
    sleep(2)
  end

  def menu_button
    element_by_content_desc("Menu Button")
  end

  def my_journeys_button
    element_by_content_desc("My journeys Button")
  end

  def terms_and_conditions_button
    element_by_content_desc("Terms and conditions Button")
  end

  def real_time_boards_button
    element_by_content_desc("Realtime boards Button")
  end

end