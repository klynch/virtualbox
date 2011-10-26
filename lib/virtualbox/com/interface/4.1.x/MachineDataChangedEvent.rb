module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class MachineDataChangedEvent < MachineEvent
          IID_STR = "abe94809-2e88-4436-83d7-50f3e64d0503"

          property :temporary, T_BOOL, :readonly => true
        end
      end
    end
  end
end