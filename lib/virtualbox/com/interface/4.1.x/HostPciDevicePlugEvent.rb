module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class HostPciDevicePlugEvent < MachineEvent
          IID_STR = "9cebfc27-c579-4965-8eb7-d31794cd7dcf"

          property :plugged, T_BOOL, :readonly => true
          property :success, T_BOOL, :readonly => true
          property :attachment, :PciDeviceAttachment, :readonly => true
          property :message, WSTRING, :readonly => true
        end
      end
    end
  end
end