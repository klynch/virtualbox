module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        # This interface is actually only used with the FFI implementer but
        # is created here to allow easier usage with the FFI abstractions.
        class NSISupports < AbstractInterface
          IID_STR = "00000000-0000-0000-c000-000000000046"

          # This has no parent
          parent nil

          function :query_interface, :pointer, [:pointer]
          function :add_ref, nil, []
          function :release, nil, []
        end
      end
    end
  end
end
