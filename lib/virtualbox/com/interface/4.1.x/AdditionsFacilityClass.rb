module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class AdditionsFacilityClass < AbstractEnum
          IID_STR = "446451b2-c88d-4e5d-84c9-91bc7f533f5f"

          map :none        => 0,
              :driver      => 10,
              :service     => 30,
              :program     => 50,
              :feature     => 100,
              :third_party => 999,
              :all         => 2147483646
        end
      end
    end
  end
end
