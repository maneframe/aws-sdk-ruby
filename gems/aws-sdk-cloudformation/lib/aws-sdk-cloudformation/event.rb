# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws
  module CloudFormation
    class Event

      extend Aws::Deprecations

      # @overload def initialize(id, options = {})
      #   @param [String] id
      #   @option options [Client] :client
      # @overload def initialize(options = {})
      #   @option options [required, String] :id
      #   @option options [Client] :client
      def initialize(*args)
        options = Hash === args.last ? args.pop.dup : {}
        @id = extract_id(args, options)
        @data = options.delete(:data)
        @client = options.delete(:client) || Client.new(options)
      end

      # @!group Read-Only Attributes

      # @return [String]
      def id
        @id
      end
      alias :event_id :id

      # The unique ID name of the instance of the stack.
      # @return [String]
      def stack_id
        data.stack_id
      end

      # The name associated with a stack.
      # @return [String]
      def stack_name
        data.stack_name
      end

      # The logical name of the resource specified in the template.
      # @return [String]
      def logical_resource_id
        data.logical_resource_id
      end

      # The name or unique identifier associated with the physical instance of
      # the resource.
      # @return [String]
      def physical_resource_id
        data.physical_resource_id
      end

      # Type of resource. (For more information, go to [ AWS Resource Types
      # Reference][1] in the AWS CloudFormation User Guide.)
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html
      # @return [String]
      def resource_type
        data.resource_type
      end

      # Time the status was updated.
      # @return [Time]
      def timestamp
        data.timestamp
      end

      # Current status of the resource.
      # @return [String]
      def resource_status
        data.resource_status
      end

      # Success/failure message associated with the resource.
      # @return [String]
      def resource_status_reason
        data.resource_status_reason
      end

      # BLOB of the properties used to create the resource.
      # @return [String]
      def resource_properties
        data.resource_properties
      end

      # @!endgroup

      # @return [Client]
      def client
        @client
      end

      # @raise [NotImplementedError]
      # @api private
      def load
        msg = "#load is not implemented, data only available via enumeration"
        raise NotImplementedError, msg
      end
      alias :reload :load

      # @raise [NotImplementedError] Raises when {#data_loaded?} is `false`.
      # @return [Types::StackEvent]
      #   Returns the data for this {Event}.
      def data
        load unless @data
        @data
      end

      # @return [Boolean]
      #   Returns `true` if this resource is loaded.  Accessing attributes or
      #   {#data} on an unloaded resource will trigger a call to {#load}.
      def data_loaded?
        !!@data
      end

      # @deprecated
      # @api private
      def identifiers
        { id: @id }
      end
      deprecated(:identifiers)

      private

      def extract_id(args, options)
        value = args[0] || options.delete(:id)
        case value
        when String then value
        when nil then raise ArgumentError, "missing required option :id"
        else
          msg = "expected :id to be a String, got #{value.class}"
          raise ArgumentError, msg
        end
      end

      class Collection < Aws::Resources::Collection; end
    end
  end
end
