module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class MouseCapabilityChangedEvent < Event
          IID_STR = "d633ad48-820c-4207-b46c-6bd3596640d5"

          property :supports_absolute, T_BOOL, :readonly => true
          property :supports_relative, T_BOOL, :readonly => true
          property :needs_host_cursor, T_BOOL, :readonly => true
        end
      end
    end
  end
end