module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class Snapshot < AbstractInterface
          IID_STR = "0472823b-c6e7-472a-8e9f-d732e86b8463"

          property :id, WSTRING, :readonly => true
          property :name, WSTRING
          property :description, WSTRING
          property :time_stamp, T_INT64, :readonly => true
          property :online, T_BOOL, :readonly => true
          property :machine, :Machine, :readonly => true
          property :parent, :Snapshot, :readonly => true
          property :children, [:Snapshot], :readonly => true
          property :children_count, T_UINT32, :readonly => true
        end
      end
    end
  end
end
