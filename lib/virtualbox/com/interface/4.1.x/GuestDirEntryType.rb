module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class GuestDirEntryType < AbstractEnum
          IID_STR = "6d19d924-1b77-4fc8-b369-a3b2c85c8241"

          map :unknown   => 0,
              :directory => 4,
              :file      => 10,
              :symlink   => 12
        end
      end
    end
  end
end
