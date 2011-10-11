module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class PerformanceCollector < AbstractInterface
          IID_STR = "e22e1acb-ac4a-43bb-a31c-17321659b0c6"

          property :metric_names, [WSTRING], :readonly => true

          function :get_metrics, [:PerformanceMetric], [[WSTRING], [:NSISupports]]
          function :setup_metrics, [:PerformanceMetric], [[WSTRING], [:NSISupports], T_UINT32, T_UINT32]
          function :enable_metrics, [:PerformanceMetric], [[WSTRING], [:NSISupports]]
          function :disable_metrics, [:PerformanceMetric], [[WSTRING], [:NSISupports]]
          function :query_metrics_data, [T_INT32], [[WSTRING], [:NSISupports], [:out, [WSTRING]], [:out, [:pointer]], [:out, [WSTRING]], [:out, [T_UINT32]], [:out, [T_UINT32]], [:out, [T_UINT32]], [:out, [T_UINT32]]]
        end
      end
    end
  end
end
