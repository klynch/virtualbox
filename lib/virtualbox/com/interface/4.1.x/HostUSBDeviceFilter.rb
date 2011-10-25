module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class HostUSBDeviceFilter < AbstractInterface
          IID_STR = "4cc70246-d74a-400f-8222-3900489c0374"

          parent :USBDeviceFilter

          property :action, :USBDeviceFilterAction
        end
      end
    end
  end
end
