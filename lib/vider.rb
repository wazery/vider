require "vider/version"
require 'vider/helpers'

module Vider
  module Rails
    class Engine < ::Rails::Engine
      initializer :append_dependent_assets_path, group: :all do |app|
        app.config.assets.precompile += %w( jquery.vide.js vider.js )
      end
    end
  end
end
