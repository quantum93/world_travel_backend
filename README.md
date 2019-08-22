# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies
_In config/environments/production.rb, we fix the breaking change: Fallbacks_
_config.i18n.fallbacks = true_ to _config.i18n.fallbacks = [I18n.default_locale]_
https://github.com/ruby-i18n/i18n/releases/tag/v1.1.0

* Configuration

* Database creation
_rails new world_travel_api_
_rails db:create_
_rails g migration add_countries_table_

* Database initialization
_When you try to git clone in other computer,_
_rake db:create_
_rake db:migrate_
_In your psql prompt,
_copy countries(name) from '/Users/Guest/Desktop/world_travel_backend/countries.csv' DELIMITER ',';_
_index should be started with 1 rather than 0 in seeds.rb_
_rake db:seed_
_rails s -p 3001_
_open in browser http://localhost:3001/v1/countries_
* API Versioning instructions
https://chriskottom.com/blog/2017/04/versioning-a-rails-api/
_URL segment: a version slug in the resource identifier, e.g. /v1/users/100_

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)
https://www.programmableweb.com/category/countries/api

* Deployment instructions
