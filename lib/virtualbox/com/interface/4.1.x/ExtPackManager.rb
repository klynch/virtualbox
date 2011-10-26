module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class ExtPackManager < AbstractInterface
          IID_STR = "3295e6ce-b051-47b2-9514-2c588bfe7554"

          property :installed_ext_packs, [:ExtPack], :readonly => true

          function :find, :ExtPack, [WSTRING]
          function :open_ext_pack_file, :ExtPackFile, [WSTRING]
          function :uninstall, :Progress, [WSTRING, T_BOOL, WSTRING]
          function :cleanup, nil, []
          function :query_all_plug_ins_for_frontend, [WSTRING], [WSTRING]
          function :is_ext_pack_usable, T_BOOL, [WSTRING]
        end
      end
    end
  end
end
