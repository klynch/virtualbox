module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class DirectoryCreateFlag < AbstractEnum
          IID_STR = "bd721b0e-ced5-4f79-b368-249897c32a36"

          map :none => 0,
              :parents => 1
        end
      end
    end
  end
end
