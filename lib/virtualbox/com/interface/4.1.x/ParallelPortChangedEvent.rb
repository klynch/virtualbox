module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class ParallelPortChangedEvent < Event
          IID_STR = "813C99FC-9849-4F47-813E-24A75DC85615"

          property :parallel_port, :ParallelPort, :readonly => true
        end
      end
    end
  end
end