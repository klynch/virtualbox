module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class MediumRegisteredEvent < Event
          IID_STR = "53fac49a-b7f1-4a5a-a4ef-a11dd9c2a458"

          property :medium_id, WSTRING, :readonly => true
          property :medium_type, :DeviceType, readonly => true
          property :registered, T_BOOL, :readonly => true
        end
      end
    end
  end
end