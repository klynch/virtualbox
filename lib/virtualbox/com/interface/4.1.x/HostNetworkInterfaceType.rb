module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class HostNetworkInterfaceType < AbstractEnum
          IID_STR = "67431b00-9946-48a2-bc02-b25c5919f4f3"

          map [:null, :bridged, :host_only]
        end
      end
    end
  end
end
