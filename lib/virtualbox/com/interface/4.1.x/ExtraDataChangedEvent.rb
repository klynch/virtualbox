module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class ExtraDataChangedEvent < Event
          IID_STR = "024F00CE-6E0B-492A-A8D0-968472A94DC7"

          property :machine_id, WSTRING, :readonly => true
          property :key, WSTRING, :readonly => true
          property :value, WSTRING, :readonly => true
        end
      end
    end
  end
end