module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class USBDeviceState < AbstractEnum
          IID_STR = "b99a2e65-67fb-4882-82fd-f3e5e8193ab4"

          map [:not_supported, :unavailable, :busy, :available, :help, :captured]
        end
      end
    end
  end
end
