module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class DeviceActivity < AbstractEnum
          IID_STR = "6FC8AEAA-130A-4eb5-8954-3F921422D707"

          map :null => 0,
              :idle => 1,
              :reading => 2,
              :writing => 3
        end
      end
    end
  end
end
