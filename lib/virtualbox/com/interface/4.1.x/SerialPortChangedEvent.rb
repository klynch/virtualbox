module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class SerialPortChangedEvent < Event
          IID_STR = "3BA329DC-659C-488B-835C-4ECA7AE71C6C"

          property :serial_port, :SerialPort, :readonly => true
        end
      end
    end
  end
end