module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class Appliance < AbstractInterface
          IID_STR = "3059cf9e-25c7-4f0b-9fa5-3c42e441670b"

          property :path, WSTRING, :readonly => true
          property :disks, [WSTRING], :readonly => true
          property :virtual_system_descriptions, [:VirtualSystemDescription], :readonly => true
          property :machines, [WSTRING], :readonly => true

          function :read, :Progress, [WSTRING]
          function :interpret, nil, []
          function :import_machines, :Progress, [[:ImportOptions]]
          function :create_vfs_explorer, :VFSExplorer, [WSTRING]
          function :write, :Progress, [WSTRING, T_BOOL, WSTRING]
          function :get_warnings, [WSTRING], []
        end
      end
    end
  end
end
