module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class MachineState < AbstractEnum
          IID_STR = "ec6c6a9e-113d-4ff4-b44f-0b69f21c97fe"

          map [:null, :powered_off, :saved, :teleported, :aborted, :running, :paused, :stuck,
                :teleporting, :live_snapshotting, :starting, :stopping, :saving, :restoring,
                :teleporting_paused_vm, :teleporting_in, :restoring_snapshot, :deleting_snapshot,
                :setting_up]
        end
      end
    end
  end
end
