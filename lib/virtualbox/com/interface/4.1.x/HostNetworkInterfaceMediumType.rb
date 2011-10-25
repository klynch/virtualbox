module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class HostNetworkInterfaceMediumType < AbstractEnum
          IID_STR = "1aa54aaf-2497-45a2-bfb1-8eb225e93d5b"

          map [:unknown, :ethernet, :ppp, :slip]
        end
      end
    end
  end
end
