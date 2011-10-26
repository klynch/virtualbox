module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class ReusableEvent < Event
          IID_STR = "69bfb134-80f6-4266-8e20-16371f68fa25"

          property :generation, T_UINT32, :readonly => true

          function :reuse, nil, []
        end
      end
    end
  end
end