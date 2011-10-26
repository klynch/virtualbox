module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class MousePointerShapeChangedEvent < Event
          IID_STR = "a6dcf6e8-416b-4181-8c4a-45ec95177aef"

          property :visible, T_BOOL, :readonly => true
          property :alpha, T_BOOL, :readonly => true
          property :xhot, T_UINT32, :readonly => true
          property :yhot, T_UINT32, :readonly => true
          property :width, T_UINT32, :readonly => true
          property :height, T_UINT32, :readonly => true
          property :shape, [T_UINT8], :readonly => true
        end
      end
    end
  end
end