module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class SharedFolder < AbstractInterface
          IID_STR = "8388da11-b559-4574-a5b7-2bd7acd5cef8"

          property :name, WSTRING, :readonly => true
          property :host_path, WSTRING, :readonly => true
          property :accessible, T_BOOL, :readonly => true
          property :writable, T_BOOL, :readonly => true
          property :last_access_error, WSTRING, :readonly => true
        end
      end
    end
  end
end
