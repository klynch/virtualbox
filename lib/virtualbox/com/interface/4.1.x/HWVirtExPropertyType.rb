module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class HWVirtExPropertyType < AbstractEnum
          IID_STR = "ce81dfdd-d2b8-4a90-bbea-40ee8b7ffcee"

          map [:null, :enabled, :exclusive, :vpid, :nested_paging, :large_pages,
              :force]
        end
      end
    end
  end
end
