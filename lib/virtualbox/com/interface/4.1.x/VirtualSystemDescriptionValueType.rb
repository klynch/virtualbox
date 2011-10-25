module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class VirtualSystemDescriptionValueType < AbstractEnum
          IID_STR = "56d9403f-3425-4118-9919-36f2a9b8c77c"

          map [:null, :reference, :original, :auto, :extra_config]
        end
      end
    end
  end
end
