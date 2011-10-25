module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class SessionState < AbstractEnum
          IID_STR = "cf2700c0-ea4b-47ae-9725-7810114b94d8"

          map [:null, :closed, :open, :spawning, :closing]
        end
      end
    end
  end
end
