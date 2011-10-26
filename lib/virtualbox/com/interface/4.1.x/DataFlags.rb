module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class DataFlags < AbstractEnum
          IID_STR = "86884dcf-1d6b-4f1b-b4bf-f5aa44959d60"

          map :none => 0x00,
              :mandatory => 0x01,
              :expert => 0x02,
              :array => 0x04,
              :flag_mask => 0x07
        end
      end
    end
  end
end
