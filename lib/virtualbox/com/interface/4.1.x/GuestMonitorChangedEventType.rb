module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class GuestMonitorChangedEventType < AbstractEnum
          IID_STR = "ef172985-7e36-4297-95be-e46396968d66"

          map :enabled => 0,
              :disabled => 1,
              :new_origin => 2
        end
      end
    end
  end
end
