module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class RuntimeErrorEvent < Event
          IID_STR = "883DD18B-0721-4CDE-867C-1A82ABAF914C"

          property :fatal, T_BOOL, :readonly => true
          property :id, WSTRING, :readonly => true
          property :message, WSTRING, :readonly => true
        end
      end
    end
  end
end