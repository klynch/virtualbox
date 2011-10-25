module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class PointingHidType < AbstractEnum
          IID_STR = "0d3c17a2-821a-4b2e-ae41-890c6c60aa97"

          map [:null, :none, :ps2_mouse, :usb_mouse, :usb_tablet, :combo_mouse]
        end
      end
    end
  end
end
