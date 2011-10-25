module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class CloneMode < AbstractEnum
          IID_STR = "a7a159fe-5096-4b8d-8c3c-d033cb0b35a8"

          map :machine_state => 1,
              :machine_and_child_states => 2,
              :all_status => 3
        end
      end
    end
  end
end
