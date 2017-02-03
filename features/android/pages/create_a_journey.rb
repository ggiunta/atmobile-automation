require 'calabash-android/abase'

class CreateJourneyPage < Calabash::ABase

  def title
    "This is create journey screen"
  end

  def create(from,to)
    enter_text(from_field, from)
    select_address(from)
    enter_text(to_field, to)
    select_address(to)
  end

  def select_address (address)
    touch(field(address).chop! + ", selectable'")
  end

  def from_field
    field("From Current location, click to modify, button")
  end

  def to_field
    field("Enter destination..., click to modify, button")
  end

  def field(field_content_desc)
    "android.view.ViewGroup contentDescription:'#{field_content_desc}'"
  end

end