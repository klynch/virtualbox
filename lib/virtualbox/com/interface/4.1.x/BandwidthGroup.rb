module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class BandwidthGroup < AbstractInterface
          IID_STR = "badea2d7-0261-4146-89f0-6a57cc34833d"

          property :name, WSTRING, :readonly => true
          property :type, :BandwidthGroupType, :readonly => true
          property :reference, T_UINT32, :readonly => true
          property :max_mb_per_sec, T_UINT32, :readonly => true
        end
      end
    end
  end
end
