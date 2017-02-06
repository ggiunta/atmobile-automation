class CreateJourneyPage < ATBase

  def title
    "This is create journey screen"
  end

  def create(from,to)
    enter_text(from_field, from)
    select_address(from)
    enter_text(to_field, to)
    select_address(to)
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

end