module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class SharedFolderChangedEvent < Event
          IID_STR = "B66349B5-3534-4239-B2DE-8E1535D94C0B"

          property :scope, :Scope, :readonly => true
        end
      end
    end
  end
end