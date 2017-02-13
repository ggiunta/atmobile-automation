class Menu < ATBase

  def title
    "Menu Button"
  end

  def navigate_to_my_journeys()
    touch(element_by_content_desc("Menu Button"))
    touch(element_by_content_desc("My journeys Button"))
    sleep(2)
  end

end