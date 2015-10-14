require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module RailsBoilerplate
  class Application < Rails::Application

    config.time_zone = "Hong Kong"

    config.autoload_paths += ["lib/"]

    config.assets.paths << Rails.root.join('vendor', 'assets', 'components', 'fonts')

    config.active_record.raise_in_transactional_callbacks = true

    config.generators do |g|
      g.fixture_replacement :factory_girl
      g.helper false
      g.test_unit false
      g.stylesheets false
      g.javascripts false
      g.controller_specs false
      g.view_specs false
      g.routing_specs false
      g.request_specs false
      g.helper_specs false
      g.jbuilder false
    end

  end
end
