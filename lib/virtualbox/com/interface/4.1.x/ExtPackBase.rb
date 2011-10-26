module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class ExtPackBase < AbstractInterface
          IID_STR = "5ffb0b64-0ad6-467d-af62-1157e7dc3c99"

          property :name, WSTRING, :readonly => true
          property :description, WSTRING, :readonly => true
          property :version, WSTRING, :readonly => true
          property :revision, T_UINT32, :readonly => true
          property :vrde_module, WSTRING, :readonly => true
          property :plug_ins, [:ExtPackPlugIn], :readonly => true
          property :usable, T_BOOL, :readonly => true
          property :why_unusable, WSTRING, :readonly => true
          property :show_license, T_BOOL, :readonly => true
          property :license, WSTRING, :readonly => true

          function :query_license, WSTRING, [WSTRING, WSTRING, WSTRING]
        end
      end
    end
  end
end
