module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class MediumVariant < AbstractEnum
          IID_STR = "584ea502-143b-4ab0-ad14-d1028fdf0316"

          map [:standard, :vmdk_split_2g, :vmdk_stream_optimized, :vmdk_esx, :fixed, :diff]
        end
      end
    end
  end
end
