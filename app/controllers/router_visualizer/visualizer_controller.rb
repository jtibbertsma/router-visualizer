module RouterVisualizer
  class VisualizerController < ApplicationController
    layout "blank"

    def visualize
      @nfa = Rails.application.routes.router.visualizer
    end
  end
end