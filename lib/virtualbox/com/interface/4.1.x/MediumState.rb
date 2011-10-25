module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class MediumState < AbstractEnum
          IID_STR = "ef41e980-e012-43cd-9dea-479d4ef14d13"

          map [:not_created, :created, :locked_read, :locked_write, :inaccessible, :creating, :deleting]
        end
      end
    end
  end
end
