module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class Scope < AbstractEnum
          IID_STR = "7c91096e-499e-4eca-9f9b-9001438d7855"

          map :global => 0,
              :machine => 1,
              :session => 2
        end
      end
    end
  end
end
