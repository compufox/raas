# Merps as a Service

finally! the future is now!!!!

## Install

`$ bundle install`

## Run

`$ bundle exec rackup`

this should start the api server at port 18520


## Endpoints

`/api/v1/reet`

### Get

getting the endpoint results in `"reet"`

every time. no matter what.  what more could you ask for?

### Post

Argument: amount (the amount of reets you want)

Returns: `[ "reet" ]` where the number of `"reet"` s equals the amount specified

---

`/api/v1/MERP`

### Get

returns `"MERP"` with varying amounts of '?'s and '!'s attached 

---

`/api/v1/camreet`

### Get

returns `"reet"` with each letter having a chance of being capitalized

---

`/api/v1/ureet`

### Get

returns `"ₘₑᵣₚ"`

---

## Errors

if any argument besides 'amount' is passed through the post request, or any non-existent endpoint is requested, you'll recieve an error in the form of `{ error: "reet" }`

even when you lose, you win!


# Currently hosted

this wonderful service is currently being hosted over at https://computerfox.xyz/api/v1/reet

have fun!


# Contributing

please contribute and help expand our everreetin' future
