module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class CPUExecutionCapChangedEvent < Event
          IID_STR = "dfa7e4f5-b4a4-44ce-85a8-127ac5eb59dc"

          property :execution_cap, T_UINT32, :readonly => true
        end
      end
    end
  end
end