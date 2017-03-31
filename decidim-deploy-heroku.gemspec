# coding: utf-8
# frozen_string_literal: true
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require_relative "lib/decidim/deploy/heroku"

Gem::Specification.new do |spec|
  spec.version = Decidim::Deploy::Heroku.version
  spec.authors = ["Josep Jaume Rey Peroy", "Marc Riera Casals", "Oriol Gual Oliva"]
  spec.email = ["josepjaume@gmail.com", "mrc2407@gmail.com", "oriolgual@gmail.com"]
  spec.license = "GPLv3"
  spec.homepage = "https://github.com/codegram/decidim-deploy-heroku"
  spec.required_ruby_version = ">= 2.4.0"
  spec.name          = "decidim-deploy-heroku"

  spec.summary       = "An opinionated `decidim` generator to deploy to Heroku"
  spec.description   = "An opinionated `decidim` generator to deploy to Heroku"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features|decidim-core)/}) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rails", Decidim::Deploy::Heroku.rails_version
  spec.add_dependency "decidim", Decidim::Deploy::Heroku.decidim_version

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 12.0.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
