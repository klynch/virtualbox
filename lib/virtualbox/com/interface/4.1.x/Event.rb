module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class Event < AbstractInterface
          IID_STR = "0ca2adba-8f30-401b-a8cd-fe31dbe839c0"

          property :type, :VBoxEventType, :readonly => true
          property :source, :EventSource, :readonly => true
          property :waitable, T_BOOL, :readonly => true

          function :set_processed, nil, []
          function :wait_processed, T_BOOL, [T_INT32]
        end
      end
    end
  end
end
