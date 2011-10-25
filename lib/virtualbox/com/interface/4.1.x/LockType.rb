module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class LockType < AbstractEnum
          IID_STR = "138b53f8-db4b-47c5-b32b-4ef52f769413"

          map [:null, :shared, :write]
        end
      end
    end
  end
end
