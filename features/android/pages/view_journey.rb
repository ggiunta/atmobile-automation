class ViewJourney < Base

  def title
    "This is journey screen"
  end

  def assert_departure_time_button()
    wait_for_element_exists(sort_by_departure_time_button)
  end

  def assert_journey(name)
    wait_for_element_exists(element_marked(name))
  end

  def sort_by_departure_time_button
    element_by_content_desc("sort by departure time, button")
  end

end