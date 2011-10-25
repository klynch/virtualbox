module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class NATAliasMode < AbstractEnum
          IID_STR = "67772168-50d9-11df-9669-7fb714ee4fa1"

          map [:null, :alias_log, :alias_proxy_only, :null, :alias_use_same_ports]
        end
      end
    end
  end
end
