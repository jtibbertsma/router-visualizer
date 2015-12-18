# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'router-visualizer/version'

Gem::Specification.new do |gem|
  gem.name           = "router-visualizer"
  gem.version        = RouterVisualizer::VERSION
  gem.authors        = ["Joseph Tibbertsma"]
  gem.email          = ["josephtibbertsma@gmail.com"]
  gem.description    = "Shows a NFA visualization of a rails application's router"
  gem.summary        = gem.description
  gem.homepage       = "https://github.com/jtibbertsma/router-visualizer"
  gem.license        = 'MIT'

  gem.files          = `git ls-files`.split($/)
  gem.require_paths  = ['lib']

  gem.add_dependency 'railties', '>= 4.0'
end