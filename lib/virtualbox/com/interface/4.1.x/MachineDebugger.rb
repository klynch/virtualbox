module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class MachineDebugger < AbstractInterface

          IID_STR = "1bfd2fa9-0d91-44d3-9515-368dcbb3eb4d"

          property :singlestep, T_BOOL
          property :recompile_user, T_BOOL
          property :recompile_supervisor, T_BOOL
          property :patm_enabled, T_BOOL
          property :csam_enabled, T_BOOL
          property :log_enabled, T_BOOL
          property :log_flags, WSTRING, :readonly => true
          property :log_groups, WSTRING, :readonly => true
          property :log_destinations, WSTRING, :readonly => true
          property :hw_virt_ex_enabled, T_BOOL, :readonly => true
          property :hw_virt_ex_nested_paging_enabled, T_BOOL, :readonly => true
          property :hw_virt_ex_vpid_enabled, T_BOOL, :readonly => true
          property :os_name, WSTRING, :readonly => true
          property :os_version, WSTRING, :readonly => true
          property :pae_enabled, T_BOOL, :readonly => true
          property :virtual_time_rate, T_UINT32
          property :vm, T_INT64

          function :dump_guest_core, nil, [WSTRING, WSTRING]
          function :dump_host_process_core, nil, [WSTRING, WSTRING]
          function :info, WSTRING, [WSTRING, WSTRING]
          function :inject_nmi, nil, []
          function :modify_log_groups, nil, [WSTRING]
          function :modify_log_flags, nil, [WSTRING]
          function :modify_log_destinations, nil, [WSTRING]
          function :read_physical_memory, [T_UINT8], [T_INT64, T_UINT32]
          function :write_physical_memory, nil, [T_INT64, T_UINT32, [T_UINT8]]
          function :read_virtual_memory, [T_UINT8], [T_UINT32, T_INT64, T_UINT32]
          function :write_virtual_memory, nil, [T_UINT32, T_INT64, T_UINT32, [T_UINT8]]
          function :detect_os, WSTRING, []
          function :get_register, WSTRING, [T_UINT32]
          function :get_registers, nil, [T_UINT32, [:out, [WSTRING]], [:out, [WSTRING]]]
          function :set_register, nil, [T_UINT32, WSTRING, WSTRING]
          function :set_registers, nil, [T_UINT32, [WSTRING], [WSTRING]]
          function :dump_guest_stack, WSTRING, [T_UINT32]
          function :reset_stats, nil, [WSTRING]
          function :dump_stats, nil, [WSTRING]
          function :get_stats, WSTRING, [WSTRING, T_BOOL]
        end
      end
    end
  end
end
