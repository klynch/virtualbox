module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class CopyFileFlag < AbstractEnum
          IID_STR = "23f79fdf-738a-493d-b80b-42d607c9b916"

          map :none => 0,
              :recursive => 1,
              :update => 2,
              :follow_links => 4
        end
      end
    end
  end
end
