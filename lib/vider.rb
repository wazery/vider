require "vider/version"
require 'vider/helpers'

module Vider
  module Rails
    class Engine < ::Rails::Engine
      initializer :append_dependent_assets_path, group: :all do |app|
        app.config.assets.paths += %w( javascripts )

        app.config.assets.precompile += %w( jquery.vide.js )
        # app.config.assets.precompile += %w( vider.js )
      end
    end
  end
end
