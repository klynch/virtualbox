module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class Display < AbstraceInterface
          IID_STR = "09eed313-cd56-4d06-bd56-fac0f716b5dd"

          function :get_screen_resolution, nil, [T_UINT32, [:out, T_UINT32], [:out, T_UINT32], [:out, T_UINT32]]
          function :set_framebuffer, nil, [T_UINT32, :Framebuffer]
          function :get_framebuffer, nil, [T_UINT32, [:out, :Framebuffer], [:out, T_INT32], [:out, T_INT32]]
          function :set_video_mode_hint, nil, [T_UINT32, T_UINT32, T_UINT32, T_UINT32]
          function :set_seamless_mode, nil, [T_BOOL]
          function :take_screen_shot, nil, [T_UINT32, :pointer, T_UINT32, T_UINT32]
          function :take_screen_shot_to_array, [T_UINT8], [T_UINT32, T_UINT32, T_UINT32]
          function :take_screen_shot_png_to_array, [T_UINT8], [T_UINT32, T_UINT32, T_UINT32]
          function :draw_to_screen, nil, [T_UINT32, :pointer, T_UINT32, T_UINT32, T_UINT32, T_UINT32]
          function :invalidate_and_update, nil, []
          function :resize_completed, nil, [T_UINT32]
          function :complete_vhwa_command, nil, [:pointer]
        end
      end
    end
  end
end
