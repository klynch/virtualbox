module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class ProcessOutputFlag < AbstractEnum
          IID_STR = "5d38c1dd-2604-4ddf-92e5-0c0cdd3bdbd5"

          map :none => 0,
              :stderr => 1
        end
      end
    end
  end
end
