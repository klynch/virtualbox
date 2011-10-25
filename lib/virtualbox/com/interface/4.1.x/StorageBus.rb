module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class StorageBus < AbstractEnum
          IID_STR = "eee67ab3-668d-4ef5-91e0-7025fe4a0d7a"

          map [:null, :ide, :sata, :scsi, :floppy, :sas]
        end
      end
    end
  end
end
