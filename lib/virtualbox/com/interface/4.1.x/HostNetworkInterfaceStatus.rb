module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class HostNetworkInterfaceStatus < AbstractEnum
          IID_STR = "cc474a69-2710-434b-8d99-c38e5d5a6f41"

          map [:unknown, :up, :down]
        end
      end
    end
  end
end
