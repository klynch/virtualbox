module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class MediumFormat < AbstractInterface
          IID_STR = "9bd5b655-ea47-4637-99f3-aad0948be35b"

          property :id, WSTRING, :readonly => true
          property :name, WSTRING, :readonly => true
          property :file_extensions, [WSTRING], :readonly => true
          property :capabilities, T_UINT32, :readonly => true

          function :describe_properties, nil, [[:out, [WSTRING]], [:out, [WSTRING]], [:out, [:DataType]], [:out, [T_UINT32]], [:out, [WSTRING]]]
        end
      end
    end
  end
end
