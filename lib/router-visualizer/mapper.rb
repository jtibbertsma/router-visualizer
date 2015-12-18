require 'router-visualizer/engine'

module ActionDispatch
  module Routing
    class Mapper
      def visualize(options = {})
        groups = options.delete(:groups) { ['development'] }
        at = options.delete(:at) { '/routes' }

        if matching_group? groups
          mount RouterVisualizer::Engine, at: at
        end
        self
      end

      private
        def matching_group?(groups)
          groups.each do |group|
            return true if Rails.env.send("#{group}?")
          end
          false
        end
    end
  end
end