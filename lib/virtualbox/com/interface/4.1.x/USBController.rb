module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class USBController < AbstractInterface
          IID_STR = "6fdcccc5-abd3-4fec-9387-2ad3914fc4a8"

          property :enabled, T_BOOL
          property :enabled_ehci, T_BOOL
          property :proxy_available, T_BOOL, :readonly => true
          property :usb_standard, T_UINT16, :readonly => true
          property :device_filters, [:USBDeviceFilter], :readonly => true

          function :create_device_filter, :USBDeviceFilter, [WSTRING]
          function :insert_device_filter, nil, [T_UINT32, :USBDeviceFilter]
          function :remove_device_filter, :USBDeviceFilter, [T_UINT32]
        end
      end
    end
  end
end
