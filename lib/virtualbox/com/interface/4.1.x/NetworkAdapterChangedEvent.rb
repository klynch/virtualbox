module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class NetworkAdapterChangedEvent < Event
          IID_STR = "08889892-1EC6-4883-801D-77F56CFD0103"

          property :network_adapter, :NetworkAdapter, :readonly => true
        end
      end
    end
  end
end