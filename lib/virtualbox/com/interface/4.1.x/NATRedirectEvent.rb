module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class NATRedirectEvent < MachineEvent
          IID_STR = "57DE97D7-3CBB-42A0-888F-610D5832D16B"

          property :slot, T_UINT32, :readonly => true
          property :remove, T_BOOL, :readonly => true
          property :name, WSTRING, :readonly => true
          property :proto, :NATProtocol, :readonly => true
          property :host_ip, WSTRING, :readonly => true
          property :host_port, T_INT32, :readonly => true
          property :guest_ip, WSTRING, :readonly => true
          property :guest_port, T_INT32, :readonly => true
        end
      end
    end
  end
end