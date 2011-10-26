module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class EventSourceChangedEvent < Event
          IID_STR = "e7932cb8-f6d4-4ab6-9cbf-558eb8959a6a"

          property :listener, :EventListener, :readonly => true
          property :add, T_BOOL, :readonly => true
        end
      end
    end
  end
end