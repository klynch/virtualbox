module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class VetoEvent < Event
          IID_STR = "9a1a4130-69fe-472f-ac10-c6fa25d75007"

          function :add_veto, nil, WSTRING
          function :is_vetoed, T_BOOL, []
          function :get_vetoes, [WSTRING], []
        end
      end
    end
  end
end