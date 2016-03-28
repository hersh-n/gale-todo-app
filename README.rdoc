== README

A simple AJAX Todo app, built with rails. Ability to create, edit, delete, and complete a todo. Todo list sorted by todo priority. The whole app is rendered through AJAX requests.

Visit the working app here

https://enigmatic-reef-28359.herokuapp.com/


RESTful API cURL commands

Create

curl -i -H "Accept: application/json" -H"content-type: application/json" -X POST -d '{"title":"The title will go here", "description":"The title will go here", "priority":1}' http://localhost:3000/api/todos


Delete

curl -i -H "Accept: application/json" -H"content-type: application/json" -X DELETE http://localhost:3000/api/todos/:id.json

Update

curl  -i -H "Accept: application/json" -H "Content-type: application/json" -X PUT -d "{\"title\":\"Updated Title\", \"description\":\"this\", \"priority\":1}" http://localhost:3000/api/todos/:id.json


This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


Please feel free to use a different markup language if you do not plan to run
<tt>rake doc:app</tt>.


