module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class BandwidthGroupChangedEvent < Event
          IID_STR = "334df94a-7556-4cbc-8c04-043096b02d82"

          property :bandwidth_group, :BandwidthGroup, :readonly => true
        end
      end
    end
  end
end