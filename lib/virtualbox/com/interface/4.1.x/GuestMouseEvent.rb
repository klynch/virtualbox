module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class GuestMouseEvent < ReusableEvent
          IID_STR = "1f85d35c-c524-40ff-8e98-307000df0992"

          property :absolute, T_BOOL, :readonly => true
          property :x, T_INT32, :readonly => true
          property :y, T_INT32, :readonly => true
          property :z, T_INT32, :readonly => true
          property :w, T_INT32, :readonly => true
          property :buttons, T_INT32, :readonly => true
        end
      end
    end
  end
end