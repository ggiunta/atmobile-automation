class CreateRealTimeBoard < Base

  def title
    "ADD BOARD"
  end

  def create(stop)
    enter_text(enter_field, stop)
    select_autocomplete()
  end

  def select_autocomplete()
    touch("android.widget.ScrollView")
  end

  def enter_field
    element_by_content_desc("Enter stop number or location, click to modify, button")
  end

end