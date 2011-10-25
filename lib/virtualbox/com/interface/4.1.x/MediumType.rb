module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class MediumType < AbstractEnum
          IID_STR = "fe663fb5-c244-4e1b-9d81-c628b417dd04"

          map [:normal, :immutable, :write_through, :shareable]
        end
      end
    end
  end
end
