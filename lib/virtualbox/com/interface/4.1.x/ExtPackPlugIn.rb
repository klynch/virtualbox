module VirtualBox
  module COM
    module Interface
      module Version_4_1_X
        class ExtPackPlugIn < AbstractInterface
          IID_STR = "58000040-e718-4746-bbce-4b86d96da461"

          property :name, WSTRING, :readonly => true
          property :description, WSTRING, :readonly => true
          property :frontend, WSTRING, :readonly => true
          property :module_path, WSTRING, :readonly => true
        end
      end
    end
  end
end
