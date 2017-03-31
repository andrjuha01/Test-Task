# Coax test

## Task
  * Create scope (function) which retrieves products which have all requested categories
  Method Product.with_categories(['Dystopian', 'Fiction']) should return items 1 and 6.
  Note: You should pass at least one argument, because in other case you just don't need this scope, use Product.all instead

## Developed using
* Ruby 2.3.3
* Rails 5.0.2

## Installation
* Clone this repository to your machine using following command:
    `git clone https://github.com/andrjuha01/Test-Task.git` for HTTPS
    or
    `git clone git@github.com:andrjuha01/Test-Task.git` for SSH
* Run bundle:
    `bundle`
* Run migrations(postgresql is used here, you can configure it in `/config/database.yml` file):
    `rails db:migrate`
* Run tests by following command(test database would be seeded by a `test_seed.rake` task on load):
    `rspec -P 'spec/models/*.rb'`
* Seed main database
    `rails db:seed`
* Open terminal and just try it:)
    `rails console`

