module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class MediumFormatCapabilities < AbstractEnum
          IID_STR = "7342ba79-7ce0-4d94-8f86-5ed5a185d9bd"

          map :uuid => 0x01,
              :create_fixed => 0x02,
              :create_dynamic => 0x04,
              :create_split2_g => 0x08,
              :differencing => 0x10,
              :asynchronous => 0x20,
              :file => 0x40,
              :properties => 0x80,
              :tcp_networking => 0x100,
              :vfs => 0x200,
              :capability_mask => 0x3FF
        end
      end
    end
  end
end
