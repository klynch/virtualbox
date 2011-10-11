module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class PerformanceMetric < AbstractInterface
          IID_STR = "2a1a60ae-9345-4019-ad53-d34ba41cbfe9"

          property :metric_name, WSTRING, :readonly => true
          property :object, :pointer, :readonly => true
          property :description, WSTRING, :readonly => true
          property :period, T_UINT64, :readonly => true
          property :count, T_UINT64, :readonly => true
          property :unit, WSTRING, :readonly => true
          property :minimum_value, T_INT64, :readonly => true
          property :maximum_value, T_INT64, :readonly => true
        end
      end
    end
  end
end
