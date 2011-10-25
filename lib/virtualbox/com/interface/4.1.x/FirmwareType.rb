module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class FirmwareType < AbstractEnum
          IID_STR = "b903f264-c230-483e-ac74-2b37ce60d371"

          map [:bios, :efi, :efi32, :efi64, :efidual]
        end
      end
    end
  end
end
