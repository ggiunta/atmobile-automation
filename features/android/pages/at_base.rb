require 'calabash-android/abase'

class ATBase < Calabash::ABase

  def element_by_content_desc(content_desc)
    "* contentDescription:'#{content_desc}'"
  end

  def keyboard_type(text)
    keyboard_enter_text(text)
    hide_soft_keyboard()
    sleep(2)
  end

end