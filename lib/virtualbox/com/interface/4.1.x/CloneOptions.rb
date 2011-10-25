module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class CloneOptions < AbstractEnum
          IID_STR = "22243f8e-96ab-497c-8cf0-f40a566c630b"

          map :link => 1,
              :keep_all_macs => 2,
              :keep_nat_macs => 3,
              :keep_disk_names => 4
        end
      end
    end
  end
end
