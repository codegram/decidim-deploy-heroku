# decidim-deploy-heroku

An opinionated Rails generator to configure your [`decidim`](https://github.com/AjuntmentdeBarcelona/decidim) app so that it can be deployed to Heroku.

### Usage

Add this gem to your Gemfile:

```ruby
gem "decidim-deploy-heroku", git: "https://github.com/codegram/decidim-deploy-heroku.git"
```

Run `bundle install` and then run the gem generator:

```bash
bundle install
bundle exec rails g decidim:deploy:heroku_installer
```
