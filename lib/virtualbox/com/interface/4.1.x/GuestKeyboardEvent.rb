module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class GuestKeyboardEvent < Event
          IID_STR = "88394258-7006-40d4-b339-472ee3801844"

          property :scancodes, [T_INT32], :readonly => true
        end
      end
    end
  end
end