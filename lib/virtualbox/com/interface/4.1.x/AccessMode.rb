module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class AccessMode < AbstractEnum
          IID_STR = "1da0007c-ddf7-4be8-bcac-d84a1558785f"

          map [:null, :read_only, :read_write]
        end
      end
    end
  end
end
