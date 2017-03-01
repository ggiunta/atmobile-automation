class RealTimeBoards < Base

  def title
    "REAL TIME BOARDS"
  end

  def touch_create()
    touch(create_real_time_board_button)
  end

  def create_real_time_board_button
    element_by_content_desc("Create a Stop Button")
  end

end