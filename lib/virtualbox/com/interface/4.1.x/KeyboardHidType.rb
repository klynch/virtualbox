module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class KeyboardHidType < AbstractEnum
          IID_STR = "5a5b0996-3a3e-44bb-9019-56979812cbcc"

          map [:null, :none, :ps2_keyboard, :usb_keyboard, :combo_keyboard]
        end
      end
    end
  end
end
