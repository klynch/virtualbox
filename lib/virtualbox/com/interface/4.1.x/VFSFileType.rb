module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class VFSFileType < AbstractEnum
          IID_STR = "714333cd-44e2-415f-a245-d378fa9b1242"

          map :unknown => 1,
              :fifo => 2,
              :dev_char => 3,
              :directory => 4,
              :dev_block => 5,
              :file => 6,
              :sym_link => 7,
              :socket => 8,
              :white_out => 9
        end
      end
    end
  end
end
