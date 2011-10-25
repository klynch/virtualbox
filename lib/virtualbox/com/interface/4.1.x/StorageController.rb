module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class StorageController < AbstractInterface
          IID_STR = "a1556333-09b6-46d9-bfb7-fc239b7fbe1e"

          property :name, WSTRING, :readonly => true
          property :max_devices_per_port_count, T_UINT32, :readonly => true
          property :min_port_count, T_UINT32, :readonly => true
          property :max_port_count, T_UINT32, :readonly => true
          property :instance, T_UINT32
          property :port_count, T_UINT32
          property :bus, :StorageBus, :readonly => true
          property :controller_type, :StorageControllerType
          property :use_host_io_cache, T_BOOL
          property :bootable, T_BOOL, :readonly => true

          function :get_ide_emulation_port, T_INT32, [T_INT32]
          function :set_ide_emulation_port, nil, [T_INT32, T_INT32]
        end
      end
    end
  end
end
