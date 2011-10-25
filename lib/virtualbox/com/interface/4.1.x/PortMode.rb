module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class PortMode < AbstractEnum
          IID_STR = "533b5fe3-0185-4197-86a7-17e37dd39d76"

          map [:disconnected, :host_pipe, :host_device, :raw_file]
        end
      end
    end
  end
end
