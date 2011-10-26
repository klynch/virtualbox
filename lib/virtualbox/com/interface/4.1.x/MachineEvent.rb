module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class MachineEvent < Event
          IID_STR = "92ed7b1a-0d96-40ed-ae46-a564d484325e"

          property :machineId, WSTRING, :readonly => true
        end
      end
    end
  end
end