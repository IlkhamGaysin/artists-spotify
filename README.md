# Artists Spotify

[![Build Status](https://semaphoreci.com/api/v1/ilkhamgaysin/artists-spotify/branches/master/shields_badge.svg)](https://semaphoreci.com/ilkhamgaysin/artists-spotify)
[![Code Climate](https://codeclimate.com/github/IlkhamGaysin/artists-spotify/badges/gpa.svg)](https://codeclimate.com/github/IlkhamGaysin/artists-spotify)

The project was built while working on simple test task.
It's API that allows to show artists from spotify and update a specified artist as a favorite.

## Additional features

I was caught up in doing the test task so that decided to add basic filers: by_name, by_genres, by_favorites

## Business Requirements

1. Return the artists and re-format the results, provide a default artist value for the root url.
2. Fetch an artist and save as a favourite

## Technical Requirements

1. Create a Rails 5 project, store code on Github or BitBucket. The application needs to be deployed on Heroku.
2. Format the result set with just the spotify id, external_urls, genres, href and name.
3. Create an action to a mark an artist as a favourite, store the formatted result set.
4. API only, no views. Responses should return JSON.

[Heroku production](https://artists-spotify.herokuapp.com)
[API Documentation](https://artists-spotify.herokuapp.com/api/docs)


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
