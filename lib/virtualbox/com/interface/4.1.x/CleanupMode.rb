module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class CleanupMode < AbstractEnum
          IID_STR = "67897c50-7cca-47a9-83f6-ce8fd8eb5441"

          map [:null, :unregister_only, :detach_all_return_none,
               :detach_all_return_hard_disks_only, :full]
        end
      end
    end
  end
end
