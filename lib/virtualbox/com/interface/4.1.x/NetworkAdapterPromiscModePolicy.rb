module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class NetworkAdapterPromiscModePolicty < AbstractEnum
          IID_STR = "c963768a-376f-4c85-8d84-d8ced4b7269e"

          map :deny => 1,
              :allow_network => 2,
              :allow_all => 3
        end
      end
    end
  end
end
