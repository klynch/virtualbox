module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class EventSource < AbstractInterface
          IID_STR = "9b6e1aee-35f3-4f4d-b5bb-ed0ecefd8538"

          function :create_listener, :EventListener, []
          function :create_aggregator, :EventSource, [[:EventSource]]
          function :register_listener, nil, [:EventListener, [:VBoxEventType], T_BOOL]
          function :unregister_listener, nil, [:EventListener]
          function :fire_event, T_BOOL, [:Event, T_INT32]
          function :get_event, :Event, [:EventListener, T_INT32]
          function :event_processed, nil, [:EventListener, :Event]
        end
      end
    end
  end
end
