require 'calabash-android/abase'

class ATBase < Calabash::ABase

  def element_by_content_desc(content_desc)
    "* contentDescription:'#{content_desc}'"
  end

  def element_marked(mark)
    "* marked:'#{mark}'"
  end

  def back()
    touch(element_by_content_desc("Back Button"))
    sleep(2)
  end

  def keyboard_type(text)
    keyboard_enter_text(text)
    sleep(2)
    hide_soft_keyboard()
    sleep(2)
  end

end