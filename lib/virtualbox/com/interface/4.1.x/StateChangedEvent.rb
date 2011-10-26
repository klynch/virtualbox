module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class StateChangedEvent < Event
          IID_STR = "4376693C-CF37-453B-9289-3B0F521CAF27"

          property :state, :MachineState, :readonly => true
        end
      end
    end
  end
end