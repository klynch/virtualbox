module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class PciDeviceAttachment < AbstractInterface
          IID_STR = "91f33d6f-e621-4f70-a77e-15f0e3c714d5"

          property :name, WSTRING, :readonly => true
          property :is_physical_device, T_BOOL, :readonly => true
          property :host_address, T_UINT32, :readonly => true
          property :guest_address, T_UINT32, :readonly => true
        end
      end
    end
  end
end
