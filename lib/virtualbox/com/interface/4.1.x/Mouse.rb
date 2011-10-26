module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class Mouse < AbstractInterface
          IID_STR = "05044a52-7811-4f00-ae3a-0ab7ff707b10"

          property :absolute_supported, T_BOOL, :readonly => true
          property :relative_supported, T_BOOL, :readonly => true
          property :needs_host_cursor, T_BOOL, :readonly => true
          property :event_source, :EventSource, :readonly => true

          function :put_mouse_event, nil, [T_INT32, T_INT32, T_INT32, T_INT32, T_INT32]
          function :put_mouse_event_absolute, nil, [T_INT32, T_INT32, T_INT32, T_INT32, T_INT32]
        end
      end
    end
  end
end
