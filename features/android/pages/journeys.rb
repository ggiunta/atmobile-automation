class Journeys < Base

  def title
    "Create a Journey Button"
  end

  def touch_create()
    touch(create_journey_button)
  end

  def view_journey(name)
    touch(element_marked(name))
  end

  def create_journey_button
    element_by_content_desc("Create a Journey Button")
  end

end