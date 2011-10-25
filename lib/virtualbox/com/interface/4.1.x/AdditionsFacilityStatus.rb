module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class AdditionsFacilityStatus < AbstractEnum
          IID_STR = "ce06f9e1-394e-4fe9-9368-5a88c567dbde"

          map :inactive    => 0,
              :paused      => 1,
              :pre_init    => 20,
              :init        => 30,
              :active      => 50,
              :terminating => 100,
              :terminated  => 101,
              :failed      => 800,
              :unknown     => 999
        end
      end
    end
  end
end
