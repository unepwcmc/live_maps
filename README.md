Live Maps
======

This app is based in Ocean Data Viewer[https://github.com/unepwcmc/ocean-data-viewer]

[![Code Climate](https://codeclimate.com/github/unepwcmc/live_maps/badges/gpa.svg)](https://codeclimate.com/github/unepwcmc/live_maps)
[![Test Coverage](https://codeclimate.com/github/unepwcmc/live_maps/badges/coverage.svg)](https://codeclimate.com/github/unepwcmc/live_maps/coverage)
[![Dependency Status](https://gemnasium.com/unepwcmc/live_maps.svg)](https://gemnasium.com/unepwcmc/live_maps)

# Installation

Live Maps is a pretty standard Rails application, backed by a Postgres database, with the [paperclip](https://github.com/thoughtbot/paperclip) gem to manage attachments. To run Ocean Data Viewer, make sure to have [ImageMagick](https://github.com/thoughtbot/paperclip#image-processor) installed, and then proceed with the usual commands:
```
$ git clone https://github.com/unepwcmc/live_maps.git live_maps
$ cd live_maps
$ bundle install
$ bundle exec rake db:setup
```

## dotenv

Live Maps uses the `dotenv` gem to manage environment variables. Before starting the server, create a copy of the file `.env.example` (removing the `.example` bit) and edit the needed variables. After this final step, `bundle exec rails server` should work like a charm.

*Note:* this applies to all environments, so make sure to have a `.env` file in your capistrano `linked_files` when deploying.
