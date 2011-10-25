module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class StorageControllerType < AbstractEnum
          IID_STR = "8a412b8a-f43e-4456-bd37-b474f0879a58"

          map [:null, :lsi_logic, :bus_logic, :intel_ahci, :piix3, :piix4, :ich6, :i82078, :lsi_logic_sas]
        end
      end
    end
  end
end
