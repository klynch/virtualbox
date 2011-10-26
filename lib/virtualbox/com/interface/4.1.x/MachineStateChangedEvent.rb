module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class MachineStateChangedEvent < MachineEvent
          IID_STR = "5748F794-48DF-438D-85EB-98FFD70D18C9"

          property :state, :MachineState, :readonly => true
        end
      end
    end
  end
end