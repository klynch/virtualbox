module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class EventListener < AbstractInterface
          IID_STR = "67099191-32e7-4f6c-85ee-422304c71b90"

          function :handle_event, nil, [:Event]
        end
      end
    end
  end
end
