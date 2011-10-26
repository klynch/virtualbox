module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class ExtPackFile < ExtPackBase
          IID_STR = "b6b49f55-efcc-4f08-b486-56e8d8afb10b"

          property :file_path, WSTRING, :readonly => true

          function :install, :Progress, [T_BOOL, WSTRING]
        end
      end
    end
  end
end
