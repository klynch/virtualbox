module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class ProcessInputFlag < AbstractEnum
          IID_STR = "5d38c1dd-2604-4ddf-92e5-0c0cdd3bdbd5"

          map :none => 0,
              :end_of_file => 1
        end
      end
    end
  end
end
