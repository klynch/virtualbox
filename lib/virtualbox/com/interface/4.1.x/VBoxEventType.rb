module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class VBoxEventType < AbstractEnum
          IID_STR = "cce48db6-8561-479d-8d46-1358bab45d4e"

          map :invalid => 0,
              :any => 1,
              :vetoable => 2,
              :machine_event => 3,
              :snapshot_event => 4,
              :input_event => 5,
              :last_wildcard => 31,
              :on_machine_state_changed => 32,
              :on_machine_data_changed => 33,
              :on_extra_data_changed => 34,
              :on_extra_data_can_change => 35,
              :on_medium_registered => 36,
              :on_machine_registered => 37,
              :on_session_state_changed => 38,
              :on_snapshot_taken => 39,
              :on_snapshot_deleted => 40,
              :on_snapshot_changed => 41,
              :on_guest_property_changed => 42,
              :on_mouse_pointer_shape_changed => 43,
              :on_mouse_capability_changed => 44,
              :on_keyboard_leds_changed => 45,
              :on_state_changed => 46,
              :on_additions_state_changed => 47,
              :on_network_adapter_changed => 48,
              :on_serial_port_changed => 49,
              :on_parallel_port_changed => 50,
              :on_storage_controller_changed => 51,
              :on_medium_changed => 52,
              :on_vrde_server_changed => 53,
              :on_usb_controller_changed => 54,
              :on_usb_device_state_changed => 55,
              :on_shared_folder_changed => 56,
              :on_runtime_error => 57,
              :on_can_show_window => 58,
              :on_show_window => 59,
              :on_cpu_changed => 60,
              :on_vrde_server_info_changed => 61,
              :on_event_source_changed => 62,
              :on_cpu_execution_cap_changed => 63,
              :on_guest_keyboard => 64,
              :on_guest_mouse => 65,
              :on_nat_redirect => 66,
              :on_host_pci_device_plug => 67,
              :on_v_box_svc_availability_changed => 68,
              :on_bandwidth_group_changed => 69,
              :on_guest_monitor_changed => 70,
              :on_storage_device_changed => 71,
              :last => 72
        end
      end
    end
  end
end
