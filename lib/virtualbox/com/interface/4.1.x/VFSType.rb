module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class VFSType < AbstractEnum
          IID_STR = "813999ba-b949-48a8-9230-aadc6285e2f2"

          map :file => 1,
              :cloud => 2,
              :s3 => 3,
              :web_dav => 4
        end
      end
    end
  end
end
