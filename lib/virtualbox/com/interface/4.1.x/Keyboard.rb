module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class Keyboard < AbstractInterface
          IID_STR = "f6916ec5-a881-4237-898f-7de58cf88672"

          property :event_source, :EventSource, :readonly => true

          function :put_scancode, nil, T_INT32
          function :put_scancodes, T_UINT32, [[T_INT32]]
          function :put_cad, nil, []
        end
      end
    end
  end
end
