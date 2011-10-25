module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class ChipsetType < AbstractEnum
          IID_STR = "8b4096a8-a7c3-4d3b-bbb1-05a0a51ec394"

          map [:null, :piix3, :ich9]
        end
      end
    end
  end
end
