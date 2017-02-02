# Artists Spotify

[![Build Status](https://semaphoreci.com/api/v1/ilkhamgaysin/artists-spotify/branches/master/shields_badge.svg)](https://semaphoreci.com/ilkhamgaysin/artists-spotify)

The project was built while working on simple test task.
It's API that allows to show artists from spotify and update a specified artist as a favorite.

## Dependencies

* PostgreSQL
* Ruby 2.3.1
* Rails 5

## Quick Start

```bash
# clone
git clone git@github.com:IlkhamGaysin/artists-spotify.git
cd artists-spotify

# run setup script
bin/setup

# configure ENV variables in .env
vim .env

# run server on 5000 port
bin/server
```

## Scripts

* `bin/setup` - setup required gems and migrate db if needed
* `bin/quality` - run brakeman and rails_best_practices for the app
* `bin/ci` - should be used in the CI to run specs
