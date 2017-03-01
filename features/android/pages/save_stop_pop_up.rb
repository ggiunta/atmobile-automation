class SaveStopPopUp < Base

  def title
    "Save stop"
  end

  def save(name)
    enter_text(stop_name_field, name)
    touch(ok_button)
  end

  def stop_name_field
    element_marked("Enter name...")
  end

  def ok_button
    element_by_content_desc("Ok, Button")
  end

end