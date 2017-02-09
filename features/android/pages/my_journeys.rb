class MyJourneysPage < ATBase

  def title
    "Create a journey Button"
  end

  def touch_create()
    touch(create_journey_button)
  end

  def create_journey_button
    element_by_content_desc("Create a Journey Button")
  end

end