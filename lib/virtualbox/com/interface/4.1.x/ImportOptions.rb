module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class ImportOptions < AbstractEnum
          IID_STR = "0a981523-3b20-4004-8ee3-dfd322202ace"

          map :keep_all_macs => 1,
              :keep_all_nats => 2
        end
      end
    end
  end
end
