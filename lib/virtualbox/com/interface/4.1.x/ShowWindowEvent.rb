module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class ShowWindowEvent < Event
          IID_STR = "B0A0904D-2F05-4D28-855F-488F96BAD2B2"

          property :win_id, T_INT64
        end
      end
    end
  end
end