# STANDALONE RAILS APPLICATION PLAYGROUND
This project is created to play around the rails in your local environment.

## Pre-requisites to install rails v7.1.3.3
ruby 3.3.0

## How to install ruby 3.3.0 in local using rbenv
```
rbenv install 3.3.0
rbenv global 3.3.0
```

## Install basic rails version with lesser dependencies
```
rails new playground --api --skip-tests --database=postgresql
```
## How to setup database
### Setup script will run few set of commands which will install DB locally.
```
./bin/setup 
```
## Install gems 
### (In order to install gems rspec-rails, add them to the Gemfile)
```
group :development, :test do
  gem 'rspec-rails'
end
```
### Perform below commands to install the gem
### (Install gems will be stored under this path: /Users/username/.rbenv/versions/3.3.0/lib/ruby/gems/3.3.0/gems/rspec-rails-6.1.2)
```
bundle install
```
```
bundle info rspec-rails
```

## Generate code for rspec
```
./bin/rails generate rspec:install
```

## Execute rspec tests
```
bundle exec rspec
```

## Run DB migrations
```
bundle exec rails db:migrate
```
```
bundle exec rake db:migrate
```