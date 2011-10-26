module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class ProcessorFeature < AbstractEnum
          IID_STR = "64c38e6b-8bcf-45ad-ac03-9b406287c5bf"

          map :hw_virt_ex => 0,
              :pae => 1,
              :long_mode => 2,
              :nested_paging => 3
        end
      end
    end
  end
end
