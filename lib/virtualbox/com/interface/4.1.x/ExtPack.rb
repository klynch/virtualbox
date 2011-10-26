module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class ExtPack < ExtPackBase
          IID_STR = "431685da-3618-4ebc-b038-833ba829b4b2"

          function :query_object, :NSISupports, [WSTRING]
        end
      end
    end
  end
end
