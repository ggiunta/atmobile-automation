class ViewRealTimeBoard < Base

  def title
    "ROUTE"
  end

  def touch_save()
    touch(save_stop_button)
  end

  def assert_real_time_board_table()
    wait_for_element_exists(real_time_board_table)
  end  

  def save_stop_button
    element_marked("Save stop")
  end

  def real_time_board_table
      element_marked("ROUTE")
  end

end