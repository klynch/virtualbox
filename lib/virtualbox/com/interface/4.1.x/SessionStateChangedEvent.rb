module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class SessionStateChangedEvent < MachineEvent
          IID_STR = "714a3eef-799a-4489-86cd-fe8e45b2ff8e"

          property :state, :SessionState, :readonly => true
        end
      end
    end
  end
end