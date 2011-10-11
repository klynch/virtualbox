module VirtualBox
  class PerformanceMetric < AbstractModel
    attribute :interface, :readonly => true, :property => false
    attribute :metric_name, :readonly => true
    attribute :object, :readonly => true
    attribute :description, :readonly => true
    attribute :period, :readonly => true
    attribute :count, :readonly => true
    attribute :unit, :readonly => true
    attribute :minimum_value, :readonly => true
    attribute :maximum_value, :readonly => true
    
    class << self
      # Populates a relationship with another model.
      #
      # **This method typically won't be used except internally.**
      #
      # @return [PerformanceMetric]
      def populate_relationship(caller, data)
        new(data)
      end

      # Saves the relationship.
      #
      # **This method typically won't be used except internally.**
      def save_relationship(caller, item)
        item.save
      end
    end

    # Initializes the performance metric object. This shouldn't be called
    # directly. Instead `Global#performance_metric` should be used to
    # retrieve this object.
    def initialize(iperfmetric)
      initialize_attributes(iperfmetric)
    end

    # Initializes the attributes of an existing performance metric.
    def initialize_attributes(iperfmetric)
      # Save the interface to an attribute
      write_attribute(:interface, iperfmetric)

      # Load the attributes from the interface
      load_interface_attributes(interface)

      # Clear dirty and mark as existing
      clear_dirty!
      existing_record!
    end
    
    # Saves the system properties.
    def save
      save_changed_interface_attributes(interface)
    end
  end
end