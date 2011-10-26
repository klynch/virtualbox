module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class KeyboardLedsChangedEvent < Event
          IID_STR = "6DDEF35E-4737-457B-99FC-BC52C851A44F"

          property :num_lock, T_BOOL, :readonly => true
          property :caps_lock, T_BOOL, :readonly => true
          property :scroll_lock, T_BOOL, :readonly => true
        end
      end
    end
  end
end