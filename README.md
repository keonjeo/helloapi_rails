# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

  version: ruby-2.3.1
  
  rvm install 2.3.1

* Gem dependences
  
  rvm gemset create helloapi_rails
  
  rvm use 2.3.1@helloapi_rails
  
  gem install bundler
  
  bundle install
  
* How to run this project

  rails s -b 0.0.0.0 -p 3000
  
  
* Use the API client to call these two interfaces

  brew install httpie
  
  
  
  ##### http post :3000/api/hello
  
  ###### params: {name: "Kitty"}
  
  HTTP/1.1 201 Created Connection: Keep-Alive Content-Length: 29 Content-Type: application/json Date: Sun, 13 Aug 2017 11:18:03 GMT Server: WEBrick/1.3.1 (Ruby/2.3.1/2016-04-26)
  { "message": "Hello via POST" }
  
  ##### http get get :3000/api/hello
  ###### params: {name: "Mike"}

  TTP/1.1 200 OK Connection: Keep-Alive Content-Length: 28 Content-Type: application/json Date: Sun, 13 Aug 2017 11:17:43 GMT Server: WEBrick/1.3.1 (Ruby/2.3.1/2016-04-26)
  { "message": "Hello via GET" }