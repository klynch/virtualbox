module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class AudioControllerType < AbstractEnum
          IID_STR = "7afd395c-42c3-444e-8788-3ce80292f36c"

          map [:ac97, :sb16]
        end
      end
    end
  end
end
