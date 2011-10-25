module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class BandwidthGroupType < AbstractEnum
          IID_STR = "1d92b67d-dc69-4be9-ad4c-93a01e1e0c8e"

          map [:null, :disk, :network]
        end
      end
    end
  end
end
