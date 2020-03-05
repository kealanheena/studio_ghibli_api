# Studio Ghibli API

This is an app that displays all of the Studio Ghibli movies as well as their rating and release date using an API. You can change the order they are displayed in, you can choose to organise them by alphabetical order, rating(highest to lowest) and release date(newest to oldest). 

<img src="./public/images/Screen Shot 2020-03-05 at 15.37.30.png" style="border-radius:10px;"/>

## Table of Content
- [User Stories](#user-stories)
- [Features](#features)
- [Tech used](#tech-used)
- [Getting started](#getting-started)
- [Running the tests](#running-the-tests)
  - [Test coverage](#test-coverage)
    - [Feature tests](#feature-tests)
    - [Unit tests](#unit-tests)
- [Versioning](#versioning)  

## User Stories

```
As a user,
So I can choose a Studio Ghibli film,
I would like to see all the Studio Ghibli films.

As a user,
So I can find a specific film by it's title,
I would like to be able to organise the films in alphabetical order.

As a user,
So I can choose a highly rated film,
I would like to organise the films by rating.

As a user,
So I can choose a relevant film,
I would like to organise the films by release date.
```

## Features
- Display films
- Reorganise films:
  - Alphabetical
  - By rating
  - By release date
  
  ## Tech used
- Ruby  
- Rspec  
- Sinatra  
- Capybara
- Rubocop
- PG
- Httparty
- ERB
- Bootstrap
- CSS


## Getting Started

Run the below in the terminal in your studio-ghibli-api directory:
- To install all necessary gems, run ```bundle```
- To open in web browser run ```ruby app.rb```
- Open http://localhost:4567/

## Running the tests  

You can run tests by running ```rspec``` in the terminal in the studio-ghibli-api directory.

### Test coverage  
#### Feature tests

- Alphabetical
  - Alphabetical page displays the titles in alphabetical order
- Highest Rated
  - Highest Rated page displays the titles in order of release date(new - old)
- Index
  - Index page displays the titles of Ghibli movies
  - Index page displays the titles in order of release date(new - old)
 
#### Unit tests

- StudioGhibli
  - *films*
    - should return an array of hashes that are studio ghibli films
    - should have "Castle in the Sky" as the title of the first hash
    - should have "When Marnie Was There" as the title of the last hash
  - *order_by*
    - context - when "title" is passed as an argument
      - should have "Arrietty" as the title of the first has
      - should have "Whisper of the Heart" as the title of the last hash
    - context - When "rt_score" is passed as an argument
      - should have "Tales from Earthsea" as the title of the first hash
      - should have "The Tale of the Princess Kaguya" as the title of the last hash

## Versioning
studio-ghibli-api rubocop version 0.71.0 running bundle install will install rubocop version 0.71.0.

