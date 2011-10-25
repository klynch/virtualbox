module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class DataType < AbstractEnum
          IID_STR = "d90ea51e-a3f1-4a01-beb1-c1723c0d3ba7"

          map [:int32, :int8, :string]
        end
      end
    end
  end
end
