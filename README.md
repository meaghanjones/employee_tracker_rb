# Employee Tracker

##### This application is a demonstration application designed to show classes, tests, views with Sinatra and SQL (no Active Record).

## Technologies Used

Application: Ruby, Sinatra<br>
Testing: Rspec, Capybara<br>
Database: Postgres

Installation
------------

Install Employee Tracker by first cloning the repository.  
```
$ git clone https://github.com/meaghanjones/employee_tracker_rb
```

Install required gems:
```
$ bundle install
```

```
In PSQL:
CREATE DATABASE to_do;
CREATE TABLE employees (id serial PRIMARY KEY, name varchar);
CREATE TABLE divisions (id serial PRIMARY KEY, description varchar);
```

Start the webserver:
```
$ ruby app.rb
```

Navigate to `localhost:4567` in browser.

License
-------

GNU GPL v2. Copyright 2015 **Epicodus**
