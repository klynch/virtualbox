module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class VBoxSVCAvailabilityChangedEvent < Event
          IID_STR = "97c78fcd-d4fc-485f-8613-5af88bfcfcdc"

          property :available, T_BOOL, :readonly => true
        end
      end
    end
  end
end