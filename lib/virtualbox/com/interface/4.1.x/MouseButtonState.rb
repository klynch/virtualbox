module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class MouseButtonState < AbstractEnum
          IID_STR = "9ee094b8-b28a-4d56-a166-973cb588d7f8"

          map :left_button => 0x01,
              :right_button => 0x02,
              :middle_button => 0x04,
              :wheel_up => 0x08,
              :wheel_down => 0x10,
              :x_button1 => 0x20,
              :x_button2 => 0x40,
              :mouse_state_mask => 0x7F
        end
      end
    end
  end
end
