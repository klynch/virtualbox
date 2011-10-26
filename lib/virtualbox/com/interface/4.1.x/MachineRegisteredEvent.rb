module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class MachineRegisteredEvent < MachineEvent
          IID_STR = "c354a762-3ff2-4f2e-8f09-07382ee25088"

          property :registered, T_BOOL, :readonly => true
        end
      end
    end
  end
end