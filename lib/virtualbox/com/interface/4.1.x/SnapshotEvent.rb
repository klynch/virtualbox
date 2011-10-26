module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class SnapshotEvent < MachineEvent
          IID_STR = "21637b0e-34b8-42d3-acfb-7e96daf77c22"

          property :snapshot_id, WSTRING, :readonly => true
        end
      end
    end
  end
end