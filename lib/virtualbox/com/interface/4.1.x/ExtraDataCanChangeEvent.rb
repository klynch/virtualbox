module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class ExtraDataCanChangeEvent < VetoEvent
          IID_STR = "245d88bd-800a-40f8-87a6-170d02249a55"

          property :machine_id, WSTRING, :readonly => true
          property :key, WSTRING, :readonly => true
          property :value, WSTRING, :readonly => true
        end
      end
    end
  end
end