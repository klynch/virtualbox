module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class Session < AbstractInterface
          IID_STR = "12f4dcdb-12b2-4ec1-b7cd-ddd9f6c5bf4d"

          property :state, :SessionState, :readonly => true
          property :type, :SessionType, :readonly => true
          property :machine, :Machine, :readonly => true
          property :console, :Console, :readonly => true

          function :unlock_machine, nil, []
        end
      end
    end
  end
end
