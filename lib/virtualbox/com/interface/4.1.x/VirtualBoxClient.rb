module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class VirtualBoxClient < AbstractInterface
          IID_STR = "5fe0bd48-1181-40d1-991f-3b02f269a823"

          property :virtual_box, :VirtualBox, :readonly => true
          property :session, :Session, :readonly => true
          property :event_source, :EventSource, :readonly => true
        end
      end
    end
  end
end
