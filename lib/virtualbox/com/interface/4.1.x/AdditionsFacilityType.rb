module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class AdditionsFacilityType < AbstractEnum
          IID_STR = "98f7f957-89fb-49b6-a3b1-31e3285eb1d8"

          map :none              => 0,
              :vbox_guest_driver => 20,
              :vbox_server       => 100,
              :vbox_tray_client  => 101,
              :seamless          => 1000,
              :graphics          => 1100,
              :all               => 2147483646
        end
      end
    end
  end
end
