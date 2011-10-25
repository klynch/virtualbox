module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class SessionType < AbstractEnum
          IID_STR = "a13c02cb-0c2c-421e-8317-ac0e8aaa153a"

          map [:null, :write_lock, :remote, :shared]
        end
      end
    end
  end
end
