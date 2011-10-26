module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class GuestMonitorChangedEvent < Event
          IID_STR = "0f7b8a22-c71f-4a36-8e5f-a77d01d76090"

          property :change_type, :GuestMonitorChangedEventType, :readonly => true
          property :screen_id, T_UINT32, :readonly => true
          property :origin_x, T_UINT32, :readonly => true
          property :origin_y, T_UINT32, :readonly => true
          property :width, T_UINT32, :readonly => true
          property :height, T_UINT32, :readonly => true
        end
      end
    end
  end
end