# README

# _World Travel Application_

#### _Project for Week 12 at the coding school, Epicodus, written on August 22, 2019._

#### By _**Tae Lee and Alex Siegberg**_

# Description
_A website for (fictional) world travel information created using Ruby on Rails.
In particular, this website informed about the countries in the world from traveler. Each traveler gives rating by their experience and written comments. You can visit the random country site within this website. In order to use this website, you need two git repos (world_travel_backend and world_travel_interface). The backend logic was tested with the integration test spec for API call._

# Database
_The site should have functionality to review countries but your database should have built-in list of countries (check deployment instructions). All reviews should have an author, comments and rating. (A rating can be a number between 1 and 10.) You can include other fields of your choosing as well._

# Scopes
_This site should use scopes to display the following information on the site:_
_The country with the most reviews._
_The country with highest averaged ratings from travelers._
_A suggestion of country to visit by random selection_

# Seeding
_This project should include seed data for 195 countries with 5 to 25 250 reviews. Use Faker with a loop to seed the database._

* Deployment instructions
_For API service back-end, execute rails server with port number 3001 in same machine with interface._
_rails s -p 3001_
_For interface, execute rails server with port number 3000 in same machine with interface._
_rails s_

## Setup/Installation Requirements
* _Open terminal and type 'git clone https://github.com/quantum93/world_travel_interface.git'_
* _Open terminal and type 'git clone https://github.com/quantum93/world_travel_backend.git'_
* _Navigate to each project directory using cd in terminal_
* _Open project in text editor (atom .)_
* _Type 'bundle install' in terminal to load Gems
* _rake db:create_
* _rake db:migrate_
* _For API service back-end, execute rails server with port number 3001 in same machine with interface._
* _rails s -p 3001_
* _For interface, execute rails server with port number 3000 in same machine with interface._
* _rails s_
* _rake db:seed_
* _rails server -p 3001 (For API server back-end,)_
* _rails server 3000 (For userinterface side,)_
* _open http://localhost:3000 in a web browser_
* _To run tests, type 'rspec' in terminal_
* _postgres DB installation with sql script in project (if your Postgres DB is not starting at login, please execute "pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start" on terminal._
* _for database backup, please execute followings in terminal,_
* _pg_dump [YOUR DATABASE NAME] > database_backup.sql_
* _for database restore after clone, please execute followings in terminal_
* _createdb [DATABASE NAME]_
* _psql [DATABASE_NAME] < database_backup.sql_
* _createdb -T [DATABASE NAME] [TEST DATABASE NAME]_

## Support and contact details

_Please contact us if you have any issues at: taebumlee@gmail.com_

## Technologies Used
* Ruby 2.5.1
* ActiveRecord
* Bootstrap
* Rspec
* Faker
* FactoryBot
* Atom
* GitHub
* Postgres DB 11.1
* for faker practice, use the faker information on https://www.rubydoc.info/gems/faker/1.6.6#fakervehicle site for test.

## License
_This software is licensed under MIT license._

Copyright (c) 2019 **_Tae Lee and Alex Siegberg**
