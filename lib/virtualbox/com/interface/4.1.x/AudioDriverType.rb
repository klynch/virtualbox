module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class AudioDriverType < AbstractEnum
          IID_STR = "4bcc3d73-c2fe-40db-b72f-0c2ca9d68496"

          map [:null, :winmm, :oss, :alsa, :direct_sound, :core_audio, :mmpm, :pulse, :sol_audio]
        end
      end
    end
  end
end
