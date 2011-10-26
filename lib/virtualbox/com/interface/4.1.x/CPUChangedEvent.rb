module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class CPUChangedEvent < Event
          IID_STR = "D0F0BECC-EE17-4D17-A8CC-383B0EB55E9D"

          property :cpu, T_UINT32, :readonly => true
          property :add, T_BOOL, :readonly => true
        end
      end
    end
  end
end