class CreateJourneyPage < ATBase

  def title
    "This is create journey screen"
  end

  def create(from, to, name)
    enter_text(from_field, from)
    select_address(from)
    enter_text(to_field, to)
    select_address(to)
    unless name.empty?
      touch(save_journey_button)
      keyboard_type(name)
    end
    touch(continue_field)
  end

  def select_address(address)
    touch(element_by_content_desc(address).chop! + ", selectable'")
  end

  def from_field
    element_by_content_desc("From Current location, click to modify, button")
  end

  def to_field
    element_by_content_desc("Enter destination..., click to modify, button")
  end

  def continue_field
    element_by_content_desc("CONTINUE, Button")
  end

  def save_journey_button
    element_by_content_desc("Save Journey")
  end

end