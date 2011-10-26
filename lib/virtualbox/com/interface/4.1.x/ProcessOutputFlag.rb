module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class ProcessOutputFlag < AbstractEnum
          IID_STR = "9979e85a-52bb-40b7-870c-57115e27e0f1"

          map :none => 0,
              :stderr => 1
        end
      end
    end
  end
end
