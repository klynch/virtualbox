module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class CpuPropertyType < AbstractEnum
          IID_STR = "24d356a6-2f45-4abd-b977-1cbe9c4701f5"

          map [:null, :pae, :synthetic]
        end
      end
    end
  end
end
