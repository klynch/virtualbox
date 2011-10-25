module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class NATProtocol < AbstractEnum
          IID_STR = "e90164be-eb03-11de-94af-fff9b1c1b19f"

          map [:udp, :tcp]
        end
      end
    end
  end
end
