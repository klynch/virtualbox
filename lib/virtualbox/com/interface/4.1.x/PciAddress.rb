module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class PciAddress < AbstractInterface
          IID_STR = "d88b324f-db19-4d3b-a1a9-bf5b127199a8"

          property :bus, T_INT16
          property :device, T_INT16
          property :dev_function, T_INT16

          function :as_long, T_INT32, []
          function :from_long, nil, [T_INT32]
        end
      end
    end
  end
end
