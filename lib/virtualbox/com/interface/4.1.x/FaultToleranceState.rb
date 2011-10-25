module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class FaultToleranceState < AbstractEnum
          IID_STR = "5124f7ec-6b67-493c-9dee-ee45a44114e1"

          map [:null, :inactive, :master, :standby]
        end
      end
    end
  end
end
