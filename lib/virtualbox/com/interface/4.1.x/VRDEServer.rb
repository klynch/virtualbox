module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class VRDEServer < AbstractInterface
          IID_STR = "d38de40a-c2c1-4e95-b5a4-167b05f5694c"

          property :enabled, T_BOOL
          property :auth_type, :AuthType
          property :auth_timeout, T_UINT32
          property :allow_multi_connection, T_BOOL
          property :reuse_single_connection, T_BOOL
          property :vrde_ext_pack, WSTRING
          property :auth_library, WSTRING
          property :vrde_properties, [WSTRING], :readonly => true

          function :set_vrde_property, nil, [WSTRING, WSTRING]
          function :get_vrde_property, WSTRING, [WSTRING]
        end
      end
    end
  end
end
