require 'calabash-android/abase'

class ATBase < Calabash::ABase

  def element_by_content_desc(content_desc)
    "android.view.ViewGroup contentDescription:'#{content_desc}'"
  end

end