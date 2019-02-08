# Merps as a Service

finally! the future is now!!!!

## Install

`$ bundle install`

## Run

`$ bundle exec rackup`

this should start the api server at port 9292


## Endpoints

`/api/v1/merp`

### Get

getting the endpoint results in `"merp"`

every time. no matter what.  what more could you ask for?

### Post

Argument: amount (the amount of merps you want)

Returns: `[ "merp" ]` where the number of `"merp"` s equals the amount specified


## Errors

if any argument besides 'amount' is passed through the post request you'll recieve an error in the form of `{ error: "merp" }`

even when you lose, you win!


# Currently hosted

this wonderful service is currently being hosted over at https://computerfox.xyz/api/v1/merp

have fun!


# Contributing

please contribute and help expand our evermerpy future
