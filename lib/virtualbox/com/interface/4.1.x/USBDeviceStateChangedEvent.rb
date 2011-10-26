module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class USBDeviceStateChangedEvent < Event
          IID_STR = "806da61b-6679-422a-b629-51b06b0c6d93"

          property :device, :USBDevice, :readonly => true
          property :attached, T_BOOL, :readonly => true
          property :error, :VirtualBoxErrorInfo, :readonly => true
        end
      end
    end
  end
end