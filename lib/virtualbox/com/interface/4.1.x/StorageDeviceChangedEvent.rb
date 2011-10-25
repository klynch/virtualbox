module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class StorageDeviceChangedEvent < AbstractInterface
          IID_STR = "715212bf-da59-426e-8230-3831faa52c56"

          property :storage_device, :MediumAttachment, :readonly => true
          property :removed, T_BOOL, readonly => true
        end
      end
    end
  end
end
