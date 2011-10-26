module VirtualBox
  module COM
    class IID < ::FFI::Struct
      layout  :m0,  :uint32,
              :m1,  :uint16,
              :m2,  :uint16,
              :m3, [:uint8, 8]

      def initialize uuid
        super()
        uuid.tr!('-', '')
        self[:m0] = uuid[0..7].hex
        self[:m1] = uuid[8..11].hex
        self[:m2] = uuid[12..15].hex
        [uuid[16..31]].pack('H*').bytes.each_with_index { |b,i| self[:m3][i] = b }
      end
    end
  end
end