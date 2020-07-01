# README

Welcome to the Crazy Coffee Concoctions app! This is my fourth project for Flatiron School.
It allows you to write, save, and view your favorite coffee concoctions.
This repository contains the Rails backend API of the project.

## Frontend
The HTML/CSS/JavaScript frontend for this project is located [here](https://github.com/Sdcrouse/crazy-coffee-concoctions-frontend).

## Installation

Follow these steps to get the backend up and running:
1. Fork and clone this repository onto your own computer.
2. Run `bundle install` to install the Ruby gems for this app.
3. Run `rails db:migrate` to create the database.
4. Optionally, run `rails db:seed` to give your database some default data.

## Usage

To start the Rails server for this project, run `rails s`. Then, you can do any of the following:
* Navigate to `http://localhost:3000/api/v1/concoctions` to see the JSON for all of the saved concoctions
* Navigate to `http://localhost:3000/api/v1/concoctions/[write the concoction number here]` to see the JSON for an individual concoction
* Navigate to `http://localhost:3000/rails/info/routes` to see this project's available routes (or run `rails routes` in your terminal).

To exit the server, hit `Ctrl-C` or `Cmd-C` in your terminal. Additionally, if you wish to play around with the saved data, run `rails c` in your terminal; to exit, hit `Ctrl-D` or `Cmd-D`.

## Videos and Blog Post

* [Click here](https://www.loom.com/share/0c1ec46b01a0444384c4e96cfb44f963) to see a demo of the Crazy Coffee Concoctions app.
* [Click here](https://www.loom.com/share/06f6004de5104f27b8aee9cb00c057cb) to watch how I coded part of my app.
* [Click here](https://stevendcrouse.com/crazy_coffee_concoctions_my_rails_js_project_and_process) to see the blog post I wrote for this project.

## Development Notes

* Ruby version: 2.6.1
* Rails version: 6.0.3.1
* Database: PostgreSQL

This Rails API also makes use of these gems: `Rack CORS` and `Fast JSON API`.

## Contributing

Please feel free to raise a new Issue on my repository if you have any problems with my app (installation, usage, bugs, etc), or you have suggestions for a new feature. Pull requests are also welcome.

Contributors are expected to follow the project's code of conduct. This can be viewed in the [CODE_OF_CONDUCT.md](./CODE_OF_CONDUCT.md) file.

## License

Licensed under the [MIT License](LICENSE).
