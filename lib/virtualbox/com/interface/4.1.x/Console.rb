module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class Console < AbstractInterface
          IID_STR = "1968b7d3-e3bf-4ceb-99e0-cb7c913317bb"

          property :machine, :Machine, :readonly => true
          property :state, :MachineState, :readonly => true
          property :guest, :Guest, :readonly => true
          property :keyboard, :Keyboard, :readonly => true
          property :mouse, :Mouse, :readonly => true
          property :display, :Display, :readonly => true
          property :debugger, :MachineDebugger, :readonly => true
          property :usb_devices, [:USBDevice], :readonly => true
          property :remote_usb_devices, [:HostUSBDevice], :readonly => true
          property :shared_folders, [:SharedFolder], :readonly => true
          property :vrde_server_info, :VRDEServerInfo, :readonly => true
          property :event_source, :EventSource, :readonly => true
          property :attached_pci_devices, [:PciDeviceAttachment], :readonly => true
          property :use_host_clipboard, T_BOOL

          function :power_up, :Progress, []
          function :power_up_paused, :Progress, []
          function :power_down, :Progress, []
          function :reset, nil, []
          function :pause, nil, []
          function :resume, nil, []
          function :power_button, nil, []
          function :sleep_button, nil, []
          function :get_power_button_handled, T_BOOL, []
          function :get_guest_entered_acpi_mode, T_BOOL, []
          function :save_state, :Progress, []
          function :adopt_saved_state, nil, [WSTRING]
          function :discard_saved_state, nil, [T_BOOL]
          function :get_device_activity, :DeviceActivity, [:DeviceType]
          function :attach_usb_device, nil, [WSTRING]
          function :detach_usb_device, :USBDevice, [WSTRING]
          function :find_usb_device_by_address, :USBDevice, [WSTRING]
          function :find_usb_device_by_id, :USBDevice, [WSTRING]
          function :create_shared_folder, nil, [WSTRING, WSTRING, T_BOOL, T_BOOL]
          function :remove_shared_folder, nil, [WSTRING]
          function :take_snapshot, :Progress, [WSTRING, WSTRING]
          function :delete_snapshot, :Progress, [WSTRING]
          function :delete_snapshot_and_all_children, :Progress, [WSTRING]
          function :delete_snapshot_range, :Progress, [WSTRING, WSTRING]
          function :restore_snapshot, :Progress, [:Snapshot]
          function :teleport, :Progress, [WSTRING, T_UINT32, WSTRING, T_UINT32]
        end
      end
    end
  end
end
