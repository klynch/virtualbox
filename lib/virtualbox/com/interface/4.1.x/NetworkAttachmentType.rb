module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class NetworkAttachmentType < AbstractEnum
          IID_STR = "2ac4bc71-6b82-417a-acd1-f7426d2570d6"

          map [:null, :nat, :bridged, :internal, :host_only, :generic]
        end
      end
    end
  end
end
