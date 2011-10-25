module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class ClipboardMode < AbstractEnum
          IID_STR = "33364716-4008-4701-8f14-be0fa3d62950"

          map [:disabled, :host_to_guest, :guest_to_host, :bidirectional]
        end
      end
    end
  end
end
