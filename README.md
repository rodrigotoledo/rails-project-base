# Requirements

- https://www.docker.com/
- Cool and good edtor: Visual Studio
- RSpec knowledge

# Setup

First of all you must have install `Docker` and have `docker-compose` as fuctional command in your terminal. With that inside the project root directory, execute:

- `docker-compose build`
  ...will build the application using Docker
- `docker-compose run app bundle exec rails db:drop db:create db:migrate db:seed`
  and finally create, migrate and populate with example data

# Coding and of course, testing...

This project use `guard` and `rspec` as monitor and test engine of application, so everytime that you will be code something the application should have coverage of tests.

- `docker-compose run app bundle exec guard`
  ...will execute `guard`, wait you code something in the project and then execute tests

The coverage of your tests will be in the `coverage` directory

# Execute something

As explained, the application run with `docker-compose` so execute the command and obtain results:

- `docker-compose up`

if you want interact in console run

- `docker-compose run app bundle exec rails c`

# Development

This project uses git flow workflow so each developer should follow the steps to build or fix something

To start new feature

- `git-flow feature start name-of-feature`

code, commit and the feature

- `git commit -am 'name-of-feature fixed with short text'`
- `git-flow feature finish name-of-feature`
