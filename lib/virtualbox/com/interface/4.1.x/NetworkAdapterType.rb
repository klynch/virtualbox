module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class NetworkAdapterType < AbstractEnum
          IID_STR = "3c2281e4-d952-4e87-8c7d-24379cb6a81c"

          map [:null, :Am79C970A, :Am79C973, :I82540EM, :I82543GC, :I82545EM, :Virtio]
        end
      end
    end
  end
end
