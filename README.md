
# WORD SPELLING CHALLENGE API

This is a really simple API containing:
- `Word` resource `text:string`
- Exercises controller, the endpoint `exercises` will return an array of 10 hashes like:
```
  :word => word.text
  :scrambled => #the scrambled word.text
```

## LIVE DEMO
You can find the api running [HERE](https://be-word-spelling-challenge.herokuapp.com/api/v1/words)

## dependencies
- Ruby 2.6
- Rails 5.1
- Postgress

## Running the project

To run the project locally just run

```
  bundle install
  rake db:create
  rake db:seed
  rails s
```
