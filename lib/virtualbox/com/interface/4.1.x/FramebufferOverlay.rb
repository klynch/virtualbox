module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class FramebufferOverlay < Framebuffer
          IID_STR = "0bcc1c7e-e415-47d2-bfdb-e4c705fb0f47"

          property :x, T_UINT32, :readonly => true
          property :y, T_UINT32, :readonly => true
          property :visible, T_BOOL, :readonly => false
          property :alpha, T_UINT32, :readonly => false

          function :move, nil, [T_UINT32, T_UINT32]
        end
      end
    end
  end
end

