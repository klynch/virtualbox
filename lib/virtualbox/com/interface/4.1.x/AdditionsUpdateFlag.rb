module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class AdditionsUpdateFlag < AbstractEnum
          IID_STR = "726a818d-18d6-4389-94e8-3e9e6826171a"

          map :none => 0,
              :wait_for_update_start_only => 1
        end
      end
    end
  end
end
