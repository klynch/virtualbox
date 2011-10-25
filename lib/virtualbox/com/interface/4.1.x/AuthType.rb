module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class AuthType < AbstractEnum
          IID_STR = "7eef6ef6-98c2-4dc2-ab35-10d2b292028d"

          map [:null, :external, :guest]
        end
      end
    end
  end
end
