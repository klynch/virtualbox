module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class AdditionsRunLevelType < AbstractEnum
          IID_STR = "a25417ee-a9dd-4f5b-b0dc-377860087754"

          map :none => 0,
              :system => 1,
              :userland => 2,
              :desktop => 3
        end
      end
    end
  end
end
