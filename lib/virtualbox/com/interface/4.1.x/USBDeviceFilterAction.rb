module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class USBDeviceFilterAction < AbstractEnum
          IID_STR = "cbc30a49-2f4e-43b5-9da6-121320475933"

          map [:null, :ignore, :hold]
        end
      end
    end
  end
end
