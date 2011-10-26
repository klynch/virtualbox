module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class FramebufferPixelFormat < AbstractEnum
          IID_STR = "7acfd5ed-29e3-45e3-8136-73c9224f3d2d"

          map :opaque => 0,
              :fourcc_rgb => 0x32424752
        end
      end
    end
  end
end
