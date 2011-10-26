module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class VRDEServerInfo < AbstractInterface
          IID_STR = "714434a1-58c3-4aab-9049-7652c5df113b"

          property :active, T_BOOL, :readonly => true
          property :port, T_INT32, :readonly => true
          property :number_of_clients, T_UINT32, :readonly => true
          property :begin_time, T_INT64, :readonly => true
          property :end_time, T_INT64, :readonly => true
          property :bytes_sent, T_INT64, :readonly => true
          property :bytes_sent_total, T_INT64, :readonly => true
          property :bytes_received, T_INT64, :readonly => true
          property :bytes_received_total, T_INT64, :readonly => true
          property :user, WSTRING,:readonly => true
          property :domain, WSTRING,:readonly => true
          property :client_name, WSTRING,:readonly => true
          property :client_ip, WSTRING,:readonly => true
          property :client_version, T_UINT32, :readonly => true
          property :encryption_style, T_UINT32, :readonly => true
        end
      end
    end
  end
end
