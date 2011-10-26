module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class MediumChangedEvent < Event
          IID_STR = "0FE2DA40-5637-472A-9736-72019EABD7DE"

          property :medium_attachment, :MediumAttachment, :readonly => true
        end
      end
    end
  end
end