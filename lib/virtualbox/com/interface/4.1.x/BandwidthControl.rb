module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class BandwidthControl < AbstractInterface
          IID_STR = "e2eb3930-d2f4-4f87-be17-0707e30f019f"

          property :num_groups, T_UINT32, :readonly => true

          function :create_bandwidth_group, nil, [WSTRING, :BandwidthGroupType, T_UINT32]
          function :delete_bandwidth_group, nil, [WSTRING]
          function :get_bandwidth_group, :BandwidthGroup, [WSTRING]
          function :get_all_bandwidth_groups, [:BandwidthGroup], []
        end
      end
    end
  end
end
