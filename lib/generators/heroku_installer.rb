require "rails/generators"

module Decidim
  module Deploy
    class HerokuInstallerGenerator < Rails::Generators::Base
      source_root File.expand_path("../templates", __FILE__)

      def add_app_json
        template "app.json.erb", "app.json"
      end

      private

      def app_name
        Rails.application.class.parent.name.underscore
      end
    end
  end
end
