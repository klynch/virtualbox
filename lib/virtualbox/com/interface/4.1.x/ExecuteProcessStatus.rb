module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class ExecuteProcessStatus < AbstractEnum
          IID_STR = "153768d9-d971-4098-8b5a-c5cb1ab9ea88"

          map :undefined => 0,
              :started   => 1,
              :terminated_normally => 2,
              :terminated_signal => 3,
              :terminated_abnormally => 4,
              :timed_out_killed => 5,
              :timed_out_abnormally => 6,
              :down => 7,
              :error => 8
        end
      end
    end
  end
end
