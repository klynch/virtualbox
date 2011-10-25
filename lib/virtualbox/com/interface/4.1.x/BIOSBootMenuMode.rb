module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class BIOSBootMenuMode < AbstractEnum
          IID_STR = "ae4fb9f7-29d2-45b4-b2c7-d579603135d5"

          map [:disabled, :menu_only, :message_and_menu]
        end
      end
    end
  end
end
