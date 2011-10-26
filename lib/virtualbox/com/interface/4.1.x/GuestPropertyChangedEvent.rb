module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class GuestPropertyChangedEvent < MachineEvent
          IID_STR = "3f63597a-26f1-4edb-8dd2-6bddd0912368"

          property :name, WSTRING, :readonly => true
          property :value, WSTRING, :readonly => true
          property :flags, WSTRING, :readonly => true
        end
      end
    end
  end
end