# decidim-deploy-heroku

An opinionated Rails generator to configure your [`decidim`](https://github.com/AjuntamentdeBarcelona/decidim) app so that it can be deployed to Heroku.

### Usage

Add this gem to your Gemfile:

```ruby
group :development do
  gem "decidim-deploy-heroku", git: "https://github.com/codegram/decidim-deploy-heroku.git"
end
```

Run `bundle install` and then run the gem generator:

```bash
bundle install
bundle exec rails g decidim:deploy:heroku_installer
```

Once the last command is performed you can uninstall the gem by removing it from the `Gemfile` and rerun `bundle install`. 

### Problems on production

This gem is not supposed to be deployed to a production environment and might fail. See [\#3](https://github.com/codegram/decidim-deploy-heroku/issues/3) for an example of this problem. If you encounter this problem, make sure you have removed the gem for the `Gemfile` and rerun `bundle install` to copletely remove it from the bundle.
