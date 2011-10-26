module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class VFSExplorer < AbstractInterface
          IID_STR = "003d7f92-d38e-487f-b790-8c5e8631cb2f"

          property :path, WSTRING, :readonly => true
          property :type, :VFSType, :readonly => true

          function :update, :Progress, []
          function :cd, :Progress, [WSTRING]
          function :cd_up, :Progress, []
          function :entry_list, nil, [[:out, [WSTRING]], [:out, [T_UINT32], [:out, [T_UINT32], [:out, [T_UINT32]]]
          function :exists, [WSTRING], [[WSTRING]]
          function :remove, :Progress, [[WSTRING]]
        end
      end
    end
  end
end
