module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class MediumAttachment < AbstractInterface
          IID_STR = "b5dfbb8c-7498-48c3-bf10-78fc60f064e1"

          property :medium, :Medium, :readonly => true
          property :controller, WSTRING, :readonly => true
          property :port, T_INT32, :readonly => true
          property :device, T_INT32, :readonly => true
          property :type, :DeviceType, :readonly => true
          property :passthrough, T_BOOL, :readonly => true
          property :temporary_eject, T_BOOL, :readonly => true
          property :is_ejected, T_BOOL, :readonly => true
          property :non_rotational, T_BOOL, :readonly => true
          property :bandwidth_group, :BandwidthGroup, :readonly => true
        end
      end
    end
  end
end
