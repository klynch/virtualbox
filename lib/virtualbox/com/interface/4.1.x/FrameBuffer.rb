module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class Framebuffer < AbstractInterface
          IID_STR = "b7ed347a-5765-40a0-ae1c-f543eb4ddeaf"

          property :address, :pointer, :readonly => true
          property :width, T_UINT32, :readonly => true
          property :height, T_UINT32, :readonly => true
          property :bits_per_pixel, T_UINT32, :readonly => true
          property :bytes_per_line, T_UINT32, :readonly => true
          property :pixel_format, T_UINT32, :readonly => true
          property :uses_guest_vram, T_BOOL, :readonly => true
          property :height_reduction, T_UINT32, :readonly => true
          property :overlay, :FramebufferOverlay, :readonly => true
          property :winId, T_INT64, :readonly => true

          function :lock, nil, []
          function :unlock, nil, []
          function :notify_update, nil, [T_UINT32, T_UINT32, T_UINT32, T_UINT32]
          function :request_resize, T_BOOL, [T_UINT32, T_UINT32, :pointer, T_UINT32, T_UINT32, T_UINT32, T_UINT32]
          function :video_mode_supported, T_BOOL, [T_UINT32, T_UINT32, T_UINT32]
          function :get_visible_region, T_UINT32, [:pointer, T_UINT32]
          function :set_visible_region, nil, [:pointer, T_UINT32]
          function :process_vhwa_command, nil, [:pointer]
        end
      end
    end
  end
end
