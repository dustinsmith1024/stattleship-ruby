module Stattleship
  module Validators
    class BaseValidator
      def initialize(key:, params:, class_name:)
        @class_name = class_name
        @key = key
        @params = params
      end

      def validate
        fail 'Validator subclass must implement validate method'
      end

      def validates_positive_integer
        if value.is_a?(Integer) && value > 0
          return
        else
          fail ArgumentError.new("expected #{key} to be an integer > 0")
        end
      end

      def validates_sports_prefix
        if blank?(value)
          return
        else
          if value.start_with?("#{sport_prefix}-")
            return
          end
        end

        fail ArgumentError.
          new("expected #{key} to start with '#{sport_prefix}'")
      end

      private

      attr_reader :class_name, :key, :params

      def blank?(value)
        value.to_s.strip == ''
      end

      def present?(value)
        !blank?(value)
      end

      def value
        params[key]
      end

      def query_parameter_class
        class_name.split('::').last
      end

      def sport_prefix
        if query_parameter_class.start_with?('Basketball')
          'nba'
        elsif query_parameter_class.start_with?('Football')
          'nfl'
        elsif query_parameter_class.start_with?('Hockey')
          'nhl'
        else
          fail "expected to find a sport prefix for #{class_name}"
        end
      end
    end
  end
end
