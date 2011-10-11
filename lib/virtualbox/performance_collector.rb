module VirtualBox
  class PerformanceCollector < AbstractModel
    attribute :interface, :readonly => true, :property => false
    attribute :metric_names, :readonly => true

    class << self
      # Populates a relationship with another model.
      #
      # **This method typically won't be used except internally.**
      #
      # @return [PerformanceCollector]
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

    # Initializes the performance collector object. This shouldn't be called
    # directly. Instead `Global#performance_collector` should be used to
    # retrieve this object.
    def initialize(iperfcollector)
      initialize_attributes(iperfcollector)
    end

    # Initializes the attributes of an existing performance collector.
    def initialize_attributes(iperfcollector)
      # Save the interface to an attribute
      write_attribute(:interface, iperfcollector)

      # Load the attributes from the interface
      load_interface_attributes(interface)

      # Clear dirty and mark as existing
      clear_dirty!
      existing_record!
    end

    # Returns an array of {COM::Interface::PerformanceMetric} parameters
    # for specific objects.
    #
    # @param [String] metric_names A comma separated list of metrics to
    #   retrieve for each object. The strings can be globbed with '*'. If no
    #   strings are provided, then all metrics are assumed.
    # @param [COM::Interface::AbstractInterface] objects The list of objects.
    #   If no objects are provided, then all metrics are assumed.
    # @return [COM::Interface::PerformanceMetric] The metric parameters.
    def get_metrics(metric_names=[], objects=[])
      metric_names = [metric_names] unless metric_names.is_a? Array
      objects = [objects] unless objects.is_a? Array

      interface.get_metrics(metric_names, objects).collect { |m| PerformanceMetric.new(m) }
    end

    # Sets up metrics for the provided metrics and objects.
    #
    # @param [String] metric_names A comma separated list of metrics to
    #   retrieve for each object. The strings can be globbed with '*'. If no
    #   strings are provided, then all metrics are assumed.
    # @param [COM::Interface::AbstractInterface] objects The list of objects.
    #   If no objects are provided, then all metrics are assumed.
    # @param Integer period Interval in seconds between taking two samples.
    # @param Integer count  Number of samples retained internally for
    #   aggregate metrics.
    # @return [COM::Interface::PerformanceMetric] The affected metrics.
    def setup_metrics(metric_names, objects, period=1, count=1)
      metric_names = [metric_names] unless metric_names.is_a? Array
      objects = [objects] unless objects.is_a? Array

      interface.setup_metrics(metric_names, objects, period, count).collect { |m| PerformanceMetric.new(m) }
    end

    # Enables metrics for the provided metrics and objects.
    #
    # @param [String] metric_names A comma separated list of metrics to
    #   retrieve for each object. The strings can be globbed with '*'. If no
    #   strings are provided, then all metrics are assumed.
    # @param [COM::Interface::AbstractInterface] objects The list of objects.
    #   If no objects are provided, then all metrics are assumed.
    # @return [COM::Interface::PerformanceMetric] The affected metrics.
    def enable_metrics(metric_names=[], objects=[])
      metric_names = [metric_names] unless metric_names.is_a? Array
      objects = [objects] unless objects.is_a? Array

      interface.enable_metrics(metric_names, objects).collect { |m| PerformanceMetric.new(m) }
    end

    # Disables metrics for the provided metrics and objects.
    #
    # @param [String] metric_names A comma separated list of metrics to
    #   retrieve for each object. The strings can be globbed with '*'. If no
    #   strings are provided, then all metrics are assumed.
    # @param [COM::Interface::AbstractInterface] objects The list of objects.
    #   If no objects are provided, then all metrics are assumed.
    # @return [COM::Interface::PerformanceMetric] The affected metrics.
    def disable_metrics(metric_names=[], objects=[])
      metric_names = [metric_names] unless metric_names.is_a? Array
      objects = [objects] unless objects.is_a? Array

      interface.disable_metrics(metric_names, objects).collect { |m| PerformanceMetric.new(m) }
    end

    # Queries metric data for the provided metrics and objects.
    #
    # @param [String] metric_names A comma separated list of metrics to
    #   retrieve for each object. The strings can be globbed with '*'. If no
    #   strings are provided, then all metrics are assumed.
    # @param [COM::Interface::AbstractInterface] objects The list of objects.
    #   If no objects are provided, then all metrics are assumed.
    # @return [Hash] A hash containing the measurement information of each
    # metric.
    def query_metrics_data(filter_metrics=[], filter_objects=[])
      filter_metrics = [filter_metrics] unless filter_metrics.is_a? Array
      filter_objects = [filter_objects] unless filter_objects.is_a? Array

      names, objects, units, scales, sequence_numbers, indices, lengths, data = interface.query_metrics_data(filter_metrics, filter_objects)
      names.zip(objects, units, scales, sequence_numbers, indices, lengths).collect do |m|
        {
          :name => m[0],
          :object => m[1],
          :unit => m[2],
          :scale => m[3],
          :sequence_number => m[4],
          :data => data[m[5], m[6]]
        }
      end
    end

    # Saves the performance collector.
    def save
      save_changed_interface_attributes(interface)
    end
  end
end