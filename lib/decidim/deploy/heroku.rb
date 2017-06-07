require "generators/heroku_installer"

module Decidim
  module Deploy
    class Heroku
      def self.version
        "0.0.1"
      end

      def self.install
        HerokuInstaller.install
      end
    end
  end
end
