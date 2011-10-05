require 'pathname'
require 'virtualbox/ext/platform'

module VirtualBox
  # Represents a single VirtualBox virtual machine. All attributes which are
  # not read-only can be modified and saved.
  #
  # # Finding Virtual Machines
  #
  # Two methods are used to find virtual machines: {VM.all} and {VM.find}. Each
  # return a {VM} object. An example is shown below:
  #
  #     vm = VirtualBox::VM.find("MyWindowsXP")
  #     puts vm.name # => "MyWindowsXP"
  #
  # # Modifying Virtual Machines
  #
  # Virtual machines can be modified a lot like [ActiveRecord](http://ar.rubyonrails.org/)
  # objects. This is best shown through example:
  #
  #     vm = VirtualBox::VM.find("MyWindowsXP")
  #     vm.memory_size = 256
  #     vm.name = "WindowsXP"
  #     vm.save
  #
  # # Controlling Virtual Machines
  #
  # Virtual machines can be controlled using the basic {#start}, {#stop}, etc.
  # methods. The current state of the VM can also be retrieved via the {#state}
  # method. An example of this use is shown below:
  #
  #     if vm.powered_off?
  #       vm.start
  #     end
  #
  # # Taking a Snapshot
  #
  # Snapshots allow virtual machine states to be saved at a given point in time
  # without having to stop the machine. This state can then be restored later.
  # VirtualBox handles this by creating a differencing image which allows the hard
  # drive to even retain its exact state. Taking a snapshot is extremely simple:
  #
  #     vm = VirtualBox::VM.find("MyWindowsXP")
  #     vm.take_snapshot("My Snapshot", "A description of my snapshot")
  #
  # # Traversing Snapshots
  #
  # Snapshots are represented by a tree-like structure. There is a root snapshot
  # and that snapshot has many children which may in turn have their own children.
  # The easiest way to traverse this structure is to use the {#root_snapshot}
  # VM method and traverse the structure like any tree structure:
  #
  #     vm = VirtualBox::VM.find("MyWindowsXP")
  #     p vm.root_snapshot.children.length
  #
  # # Finding Snapshots
  #
  # While traversing the entire snapshot tree can be useful, it is often more
  # useful to be able to simply find a snapshot by name. For this, use the
  # {#find_snapshot} method:
  #
  #     vm = VirtualBox::VM.find("MyWindowsXP")
  #     p vm.find_snapshot("PreSP3")
  #
  # # Attributes and Relationships
  #
  # Properties of the virtual machine are exposed using standard ruby instance
  # methods which are generated on the fly. Because of this, they are not listed
  # below as available instance methods.
  #
  # These attributes can be accessed and modified via standard ruby-style
  # `instance.attribute` and `instance.attribute=` methods. The attributes are
  # listed below.
  #
  # Relationships are also accessed like attributes but can't be set. Instead,
  # they are typically references to other objects such as a {HardDrive} which
  # in turn have their own attributes which can be modified.
  #
  # ## Attributes
  #
  # This is copied directly from the class header, but lists all available
  # attributes. If you don't understand what this means, read {Attributable}.
  #
  #     attribute :uuid, :readonly => true, :property => :id
  #     attribute :name
  #     attribute :os_type_id
  #     attribute :description
  #     attribute :memory_size
  #     attribute :memory_balloon_size
  #     attribute :vram_size
  #     attribute :cpu_count
  #     attribute :accelerate_3d_enabled, :boolean => true
  #     attribute :accelerate_2d_video_enabled, :boolean => true
  #     attribute :clipboard_mode
  #     attribute :monitor_count
  #     attribute :state, :readonly => true
  #     attribute :accessible, :readonly => true, :boolean => true
  #     attribute :hardware_version
  #     attribute :hardware_uuid
  #     attribute :firmware_type
  #     attribute :snapshot_folder
  #     attribute :settings_file_path, :readonly => true
  #     attribute :last_state_change, :readonly => true
  #     attribute :state_file_path, :readonly => true
  #     attribute :log_folder, :readonly => true
  #     attribute :snapshot_count, :readonly => true
  #     attribute :current_state_modified, :readonly => true
  #     attribute :guest_property_notification_patterns
  #     attribute :teleporter_enabled, :boolean => true
  #     attribute :teleporter_port
  #     attribute :teleporter_address
  #     attribute :teleporter_password
  #     attribute :interface, :readonly => true, :property => false
  #
  # ## Relationships
  #
  # In addition to the basic attributes, a virtual machine is related
  # to other things. The relationships are listed below. If you don't
  # understand this, read {Relatable}.
  #
  #     relationship :audio_adapter, :AudioAdapter
  #     relationship :bios, :BIOS
  #     relationship :hw_virt, :HWVirtualization
  #     relationship :cpu, :CPU
  #     relationship :vrdp_server, :VRDPServer
  #     relationship :storage_controllers, :StorageController, :dependent => :destroy
  #     relationship :medium_attachments, :MediumAttachment
  #     relationship :shared_folders, :SharedFolder
  #     relationship :extra_data, :ExtraData
  #     relationship :forwarded_ports, :ForwardedPort
  #     relationship :network_adapters, :NetworkAdapter
  #     relationship :usb_controller, :USBController
  #     relationship :current_snapshot, :Snapshot
  #
  class VM < AbstractModel
    attribute_scope :lazy => true do
      attribute :uuid, :readonly => true, :property => :id
      attribute :name
      attribute :os_type_id
      attribute :description
      attribute :memory_size
      attribute :memory_balloon_size
      attribute :vram_size
      attribute :cpu_count
      attribute :cpu_hot_plug_enabled, :boolean => true
      attribute :cpu_execution_cap
      attribute :accelerate_3d_enabled, :boolean => true
      attribute :accelerate_2d_video_enabled, :boolean => true
      attribute :clipboard_mode
      attribute :monitor_count
      attribute :state, :readonly => true
      attribute :accessible, :readonly => true, :boolean => true
      attribute :hardware_version
      attribute :hardware_uuid
      attribute :firmware_type
      attribute :snapshot_folder
      attribute :settings_file_path, :readonly => true
      attribute :last_state_change, :readonly => true
      attribute :state_file_path, :readonly => true
      attribute :log_folder, :readonly => true
      attribute :snapshot_count, :readonly => true
      attribute :current_state_modified, :readonly => true
      attribute :guest_property_notification_patterns
      attribute :teleporter_enabled, :boolean => true
      attribute :teleporter_port
      attribute :teleporter_address
      attribute :teleporter_password
      attribute :boot_order,
        :property_getter => Proc.new { |instance, *args| instance.get_boot_order(*args) },
        :property_setter => Proc.new { |instance, *args| instance.set_boot_order(*args) }
    end

    attribute :interface, :readonly => true, :property => false
    relationship :audio_adapter, :AudioAdapter, :lazy => true
    relationship :bios, :BIOS, :lazy => true
    relationship :hw_virt, :HWVirtualization, :lazy => true
    relationship :cpu, :CPU, :lazy => true
    relationship :vrde_server, :VRDEServer, :lazy => true
    relationship :storage_controllers, :StorageController, :dependent => :destroy, :lazy => true
    relationship :medium_attachments, :MediumAttachment, :lazy => true
    relationship :shared_folders, :SharedFolder, :lazy => true
    relationship :extra_data, :ExtraData, :lazy => true
    relationship :forwarded_ports, :ForwardedPort, :version => "3.1", :lazy => true
    relationship :network_adapters, :NetworkAdapter, :lazy => true
    relationship :usb_controller, :USBController, :lazy => true
    relationship :current_snapshot, :Snapshot, :lazy => true

    class << self
      # Returns an array of all available VMs.
      #
      # @return [Array<VM>]
      def all
        Global.global(true).vms
      end

      def create(name, os_type, settings_file=nil, id=nil, force_overwrite=false)
        if check_os_type(id)
          new(Lib.lib.virtualbox.create_machine(settings_file, name, os_type, id, force_overwrite))
        end
      end

      # Creates a new machine, and registers it once all modifications are
      # made. The VM object is returned if the machine is successfully
      # registered, otherwise nil is returned.
      #
      # If a block is given, a VM is returned for modification before
      # the machine is registered. Do not save the VM.
      #
      # @param [String] name The name of the VM
      # @param [String] os_type Optional. The type of the operating system
      #                         (e.g. Ubuntu_64, Fedora, WindowsXP, Other).
      #                         Default is "Other".
      # @param [String] settings Optional. The file where the .vbox is to
      #                          be stored. If omitted or nil, it is
      #                         constructed using compose_machine_filename
      #                         and is equal to the default path name/name.vbox
      # @param [String] id Optional. The UUID for the new machine. If omitted
      #                    or nil, one is generated.
      # @param [Boolean] overwrite Optional. Permits the overwriting of a VM
      #                            with the same name. Default is false.
      # @return [VM] The newly created VM if successful, otherwise nil
      def create(name, os_type=nil, settings=nil, id=nil, overwrite=false, &block)
        #Should check VirtualBox::Lib.lib.virtualbox.guest_os_types for validity.
        m = Lib.lib.virtualbox.create_machine(settings, name, os_type, id, overwrite)
        vm = new(m)
        yield(vm) if block_given?
        Lib.lib.virtualbox.register_machine(m)
        vm.save
        vm
      rescue Exceptions::ObjectNotFoundException
        nil
      rescue Exceptions::COMException
        # NOTE: This only happens on JRuby/Windows
        nil
      end

      # Finds a VM by UUID or registered name and returns a
      # new VM object. If the VM doesn't exist, will return `nil`.
      #
      # @return [VM]
      def find(name)
        new(Lib.lib.virtualbox.find_machine(name))
      rescue Exceptions::ObjectNotFoundException
        nil
      rescue Exceptions::COMException
        # NOTE: This only happens on JRuby/Windows
        nil
      end

      # Imports a VM, blocking the entire thread during this time.
      # When finished, on success, will return the VM object. This
      # VM object can be used to make any modifications necessary
      # (RAM, cpus, etc.).
      #
      # If there are multiple VMs in the OVF file being imported,
      # the first virtual machine will be returned, although all will
      # be imported.
      #
      # If a block is given, it will be yielded with the progress of the
      # import operation, so that the progress of the import can be
      # tracked.
      #
      # @return [VM] The newly imported virtual machine
      def import(source_path, &block)
        appliance = Appliance.new(source_path)
        appliance.import(&block)

        find(appliance.virtual_systems.first.descriptions[:name][:auto])
      end

      def populate_relationship(caller, machines)
        machines.is_a?(Array) ? populate_array_relationship(caller, machines) : populate_single_relationship(caller, machines)
      end

      def populate_single_relationship(caller, machine)
        new(machine)
      end

      def populate_array_relationship(caller, machines)
        result = Proxies::Collection.new(caller)

        machines.each do |machine|
          result << new(machine)
        end

        result
      end
    end

    # Creates a new instance of a virtual machine.
    #
    # **Currently can NOT be used to create a NEW virtual machine**.
    # Support for creating new virtual machines will be added shortly.
    # For now, this is only used by {VM.find} and {VM.all} to
    # initialize the VMs.
    def initialize(imachine)
      super()

      write_attribute(:interface, imachine)
      initialize_attributes(imachine)
    end

    def initialize_attributes(machine)
      # Clear dirtiness, since this should only be called initially and
      # therefore shouldn't affect dirtiness
      clear_dirty!

      # But this is an existing record
      existing_record!
    end

    def load_attribute(key)
      read_interface_attribute(key, interface)
    end

    def load_relationship(name)
      # Load only the requested relationship
      populate_relationship(name, interface)
    end

    # Reload the model so that all the attributes and relationships are
    # up to date. This method will automatically discard any changes to
    # the VM and any of its relationships.
    def reload
      # Reset relationships and attributes
      reset_attributes
      reset_relationships

      # Initialize again
      initialize_attributes(interface)

      self
    end

    # State of the virtual machine. Returns the state of the virtual
    # machine. This state will represent the state that was assigned
    # when the VM was found unless `reload` is set to `true`.
    #
    # @param [Boolean] reload If true, will reload the state to current
    #   value.
    # @return [String] Virtual machine state.
    def state(suppress_state_reload=false)
      if !suppress_state_reload
        load_interface_attribute(:state, interface)
        clear_dirty!(:state)
      end

      read_attribute(:state)
    end

    # Validates the virtual machine
    def validate
      super

      validates_presence_of :name, :os_type_id, :memory_size, :vram_size, :cpu_count
      validates_numericality_of :memory_balloon_size, :monitor_count
      validates_inclusion_of :accelerate_3d_enabled, :accelerate_2d_video_enabled, :teleporter_enabled, :in => [true, false]

      if !errors_on(:name)
        # Only validate the name if the name has no errors already
        vms_of_same_name = self.class.find(name)
        add_error(:name, 'must not be used by another virtual machine.') if vms_of_same_name && vms_of_same_name.uuid != uuid
      end

      validates_inclusion_of :os_type_id, :in => VirtualBox::Global.global.lib.virtualbox.guest_os_types.collect { |os| os.id }

      min_guest_ram, max_guest_ram = Global.global.system_properties.min_guest_ram, Global.global.system_properties.max_guest_ram
      validates_inclusion_of :memory_size, :in => (min_guest_ram..max_guest_ram), :message => "must be between #{min_guest_ram} and #{max_guest_ram}."
      validates_inclusion_of :memory_balloon_size, :in => (0..max_guest_ram), :message => "must be between 0 and #{max_guest_ram}."

      min_guest_vram, max_guest_vram = Global.global.system_properties.min_guest_vram, Global.global.system_properties.max_guest_vram
      validates_inclusion_of :vram_size, :in => (min_guest_vram..max_guest_vram), :message => "must be between #{min_guest_vram} and #{max_guest_vram}."

      min_guest_cpu_count, max_guest_cpu_count = Global.global.system_properties.min_guest_cpu_count, Global.global.system_properties.max_guest_cpu_count
      validates_inclusion_of :cpu_count, :in => (min_guest_cpu_count..max_guest_cpu_count), :message => "must be between #{min_guest_cpu_count} and #{max_guest_cpu_count}."

      validates_inclusion_of :clipboard_mode, :in => COM::Util.versioned_interface(:ClipboardMode).map
      validates_inclusion_of :firmware_type, :in => COM::Util.versioned_interface(:FirmwareType).map
    end

    # Saves the virtual machine if modified. This method saves any modified
    # attributes of the virtual machine. If any related attributes were saved
    # as well (such as storage controllers), those will be saved, too.
    def save
      return false unless valid?
      raise Exceptions::ReadonlyVMStateException.new("VM must not be in saved state to modify.") if saved?

      with_open_session do |session|
        # Use setters to save the attributes on the locked machine and persist
        # the settings
        machine = session.machine

        # Save the boot order
        save_interface_attribute(:boot_order, machine)

        # Save all the attributes and relationships
        save_changed_interface_attributes(machine)

        # Save relationships, which may open their own sessions if necessary
        save_relationships
      end

      true
    end

    # Returns the root snapshot of this virtual machine. This root snapshot
    # can be used to traverse the tree of snapshots.
    #
    # @return [Snapshot]
    def root_snapshot
      return nil if current_snapshot.nil?

      current = current_snapshot
      current = current.parent while current.parent != nil
      current
    end

    # Find a snapshot by name or UUID. This allows you to find a snapshot by a given
    # name, rather than having to resort to traversing the entire tree structure
    # manually.
    def find_snapshot(name)
      find_helper = lambda do |name, root|
        return nil if root.nil?
        return root if root.name == name || root.uuid == name

        root.children.each do |child|
          result = find_helper.call(name, child)
          return result unless result.nil?
        end

        nil
      end

      find_helper.call(name, root_snapshot)
    end

    # Opens a direct session with the machine this VM represents and yields
    # the session object to a block. Many of the VirtualBox's settings can only
    # be modified with an open session on a machine. An open session is similar
    # to a write-lock. Once the session is completed, it must be closed, which
    # this method does as well.
    def with_open_session(mode=:write)
      # Set the session up
      session = Lib.lib.session

      close_session = false

      if session.state != :open
        # Open up a session for this virtual machine
        interface.lock_machine(session, mode)

        # Mark the session to be closed
        close_session = true
      end

      # Yield the block with the session
      yield session if block_given?

      # Close the session
      if close_session
        # Save these settings only if we're closing and only if the state
        # is not saved, since that doesn't allow the machine to be saved.
        session.machine.save_settings if mode == :write && session.machine.state != :saved

        # Close the session
        session.unlock_machine
      end
    rescue Exception
      # Close the session so we don't get locked out. We use a rescue block
      # here instead of an "ensure" since we ONLY want this to occur if an
      # exception is raised. Otherwise, we may or may not close the session,
      # depending how deeply nested this call to `with_open_session` is.
      # (see close_session boolean above)
      session.unlock_machine if session.state == :open

      # Reraise the exception, we're not actually catching it to handle it
      raise
    end

    # Exports a virtual machine. The virtual machine will be exported
    # to the specified OVF file name. This directory will also have the
    # `mf` file which contains the file checksums and also the virtual
    # drives of the machine.
    #
    # Export also supports an additional options hash which can contain
    # information that will be embedded with the virtual machine. View
    # below for more information on the available options.
    #
    # This method will block until the export is complete, which takes about
    # 60 to 90 seconds on my 2.2 GHz 2009 model MacBook Pro.
    #
    # If a block is given to the method, then it will be yielded with the
    # progress of the operation.
    #
    # @param [String] filename The file (not directory) to save the exported
    #   OVF file. This directory will also receive the checksum file and
    #   virtual disks.
    def export(filename, options = {}, &block)
      app = Appliance.new
      app.path = filename
      app.add_machine(self, options)
      app.export(&block)
    end

    # Take a snapshot of the current state of the machine. This method can be
    # called while the VM is running and also while it is powered off. This
    # method will block while the snapshot is being taken.
    #
    # If a block is given to this method, it will yield with a progress
    # object which can be used to get the progress of the operation.
    #
    # @param [String] name Name of the snapshot.
    # @param [String] description Description of the snapshot.
    def take_snapshot(name, description="", &block)
      with_open_session do |session|
        session.console.take_snapshot(name, description).wait(&block)
      end
    end

    # Starts the virtual machine. The virtual machine can be started in a
    # variety of modes:
    #
    # * **gui** -- The VirtualBox GUI will open with the screen of the VM.
    # * **vrdp** -- The VM will run in the background. No GUI will be
    #   present at all.
    #
    # This method blocks while the external processes are starting.
    #
    # @param [Symbol] mode Described above.
    # @return [Boolean] True if command was successful, false otherwise.
    def start(mode="gui")
      return false if running?

      # Open a new remote session, this will automatically start the machine
      # as well
      session = Lib.lib.session
      interface.launch_vm_process(session, mode.to_s, "").wait
      session.unlock_machine if session.state == :open
      true
    end

    # Shuts down the VM by directly calling "acpipowerbutton". Depending on the
    # settings of the Virtual Machine, this may not work. For example, some linux
    # installations don't respond to the ACPI power button at all. In such cases,
    # {#stop} or {#save_state} may be used instead.
    #
    # @return [Boolean] True if command was successful, false otherwise.
    def shutdown
      control(:power_button)
    end

    # Stops the VM by directly calling "poweroff." Immediately halts the
    # virtual machine without saving state. This could result in a loss
    # of data. To prevent data loss, see {#shutdown}
    #
    # @return [Boolean] True if command was successful, false otherwise.
    def stop
      control(:power_down)
    end

    # Pauses the VM, putting it on hold temporarily. The VM can be resumed
    # again by calling {#resume}
    #
    # @return [Boolean] True if command was successful, false otherwise.
    def pause
      control(:pause)
    end

    # Resume a paused VM.
    #
    # @return [Boolean] True if command was successful, false otherwise.
    def resume
      control(:resume)
    end

    # Saves the state of a VM and stops it. The VM can be resumed
    # again by calling "{#start}" again.
    #
    # @return [Boolean] True if command was successful, false otherwise.
    def save_state
      control(:save_state)
    end

    # Discards any saved state on the current VM. The VM is not destroyed though
    # and can still be started by calling {#start}.
    #
    # @return [Boolean] True if command was successful, false otherwise.
    def discard_state
      control(:discard_saved_state, true)
    end

    # Controls the virtual machine. This method is used by {#stop},
    # {#pause}, {#resume}, and {#save_state} to control the virtual machine.
    # Typically, you won't ever have to call this method and should
    # instead call those.
    #
    # @param [String] command The command to run on controlvm
    # @return [Boolean] True if command was successful, false otherwise.
    def control(command, *args)
      with_open_session(:shared) do |session|
        result = session.console.send(command, *args)
        result.wait if result.is_a?(COM::Util.versioned_interface(:Progress))
      end
    end

    # Destroys the virtual machine. This method also removes all attached
    # media (required by VirtualBox to destroy a VM). By default,
    # this **will not** destroy attached hard drives, but will if given
    # the `destroy_image` option.
    #
    # @overload destroy(opts = {})
    #   Passes options to the destroy method.
    #   @option opts [Boolean] :destroy_medium (false) If true, will
    #     also unregister attached media. If set to `:delete`, it will
    #     not only unregister attached media, but will also physically
    #     remove their respective data.
    def destroy
      # Do a full cleanup on the machine, then delete all the media attached
      media = interface.unregister(:full)

      if !media.empty?
        if Platform.windows?
          # The MSCOM interface in CRuby to delete media is broken,
          # so we do this ghettoness. Also, in JRuby, passing an array
          # to objects is broken. So once again, we do this.
          path = interface.settings_file_path

          # A simple sanity check to make sure we don't attempt to delete
          # the root or something
          if path.length > 10
            Pathname.new(path).parent.rmtree
          end
        else
          interface.delete(media)

          # TODO: This sleep is silly. The progress object returned by the media
          # delete always fails to "wait" for some reason, so I do this. I hope
          # to solve this issue soon.
          sleep 1
        end
      end
    end

    # Returns true if the virtual machine state is starting
    #
    # @return [Boolean] True if virtual machine state is starting
    def starting?
      state == :starting
    end

    # Returns true if the virtual machine state is running
    #
    # @return [Boolean] True if virtual machine state is running
    def running?
      state == :running
    end

    # Returns true if the virtual machine state is powered off
    #
    # @return [Boolean] True if virtual machine state is powered off
    def powered_off?
      state == :powered_off
    end

    # Returns true if the virtual machine state is paused
    #
    # @return [Boolean] True if virtual machine state is paused
    def paused?
      state == :paused
    end

    # Returns true if the virtual machine state is saved
    #
    # @return [Boolean] True if virtual machine state is saved
    def saved?
      state == :saved
    end

    # Returns true if the virtual machine state is aborted
    #
    # @return [Boolean] True if virtual machine state is aborted
    def aborted?
      state == :aborted
    end

    # Loads the boot order for this virtual machine. This method should
    # never be called directly. Instead, use the `boot_order` attribute
    # to read and modify the boot order.
    def get_boot_order(interface, key)
      max_boot = Global.global.system_properties.max_boot_position

      (1..max_boot).inject([]) do |order, position|
        order << interface.get_boot_order(position)
        order
      end
    end

    # Sets the boot order for this virtual machine. This method should
    # never be called directly. Instead, modify the `boot_order` array.
    def set_boot_order(interface, key, value)
      max_boot = Global.global.system_properties.max_boot_position
      value = value.dup
      value.concat(Array.new(max_boot - value.size)) if value.size < max_boot

      (1..max_boot).each do |position|
        interface.set_boot_order(position, value[position - 1])
      end
    end
  end
end
