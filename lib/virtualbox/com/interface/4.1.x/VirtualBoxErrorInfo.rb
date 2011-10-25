module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class VirtualBoxErrorInfo < AbstractInterface
          IID_STR = "e053d3c0-f493-491b-a735-3a9f0b1feed4"

          parent :NSIException

          property :result_code, T_UINT32, :readonly => true
          property :interface_i_d, WSTRING, :readonly => true
          property :component, WSTRING, :readonly => true
          property :text, WSTRING, :readonly => true
          property :next, :VirtualBoxErrorInfo, :readonly => true
        end
      end
    end
  end
end
