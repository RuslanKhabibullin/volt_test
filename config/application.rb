require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module VoltTest
  class Application < Rails::Application
    config.api_only = true

    config.active_job.queue_adapter = :delayed_job
    config.eager_load_paths << Rails.root.join("lib")

    config.app_generators.scaffold_controller :responders_controller
    config.load_defaults 5.1
  end
end
