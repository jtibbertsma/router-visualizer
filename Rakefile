$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)
require "router-visualizer/version"

task :build do  
  system "gem build router-visualizer.gemspec"
end

task :release => :build do  
  system "gem push router-visualizer-#{RouterVisualizer::VERSION}.gem"
end  