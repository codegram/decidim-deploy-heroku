require "rails/generators"

module Decidim
  module Deploy
    class HerokuInstallerGenerator < Rails::Generators::Base
      source_root File.expand_path("../templates", __FILE__)

      def add_app_json
        template "app.json.erb", "app.json"
      end

      def set_review_apps_uploads_path_in_initializer
        gsub_file("config/initializers/decidim.rb", /^end/, <<-INITIALIZER_CONTENT)
  if ENV["HEROKU_APP_NAME"].present?
    config.base_uploads_path = ENV["HEROKU_APP_NAME"] + "/"
  end
end
INITIALIZER_CONTENT
      end

      def set_seeds_for_review_apps
        gsub_file("db/seeds.rb", "Decidim.seed!", <<-SEEDS_CONTENT)
if ENV["HEROKU_APP_NAME"].present?
  ENV["DECIDIM_HOST"] = ENV["HEROKU_APP_NAME"] + ".herokuapp.com"
  ENV["SEED"] = true
end
Decidim.seed!
        SEEDS_CONTENT
      end

      private

      def app_name
        Rails.application.class.parent.name.underscore
      end
    end
  end
end
