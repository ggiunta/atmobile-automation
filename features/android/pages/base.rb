require 'calabash-android/abase'

class Base < Calabash::ABase

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
    text.each_char do |c|
      keyboard_enter_text(c)
      sleep(0.25)
    end
    hide_soft_keyboard()
    sleep(0.5)
  end

end