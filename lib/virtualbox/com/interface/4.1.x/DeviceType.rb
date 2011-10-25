module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class DeviceType < AbstractEnum
          IID_STR = "6d9420f7-0b56-4636-99f9-7346f1b01e57"

          map [:null, :floppy, :dvd, :hard_disk, :network, :usb, :shared_folder]
        end
      end
    end
  end
end
