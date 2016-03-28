== README


##### A simple AJAX Todo app, built with rails. Ability to create, edit, delete, and complete a todo. Todo list sorted by todo priority. The whole app is rendered through AJAX requests.

Visit the working app here

https://enigmatic-reef-28359.herokuapp.com/

## API Setup

- 1 Fork Repo
- 2 $ bundle
- 3 $ rake db:setup
- 4 $ rails s
- 5 In a new terminal input the curl commands below(don't to replace the placeholder data)

## RESTful API cURL commands

### Create

curl -i -H "Accept: application/json" -H"content-type: application/json" -X POST -d '{"title":"The title will go here", "description":"The title will go here", "priority":1}' http://localhost:3000/api/todos


### Delete

curl -i -H "Accept: application/json" -H"content-type: application/json" -X DELETE http://localhost:3000/api/todos/:id.json

### Update

curl  -i -H "Accept: application/json" -H "Content-type: application/json" -X PUT -d "{\"title\":\"Updated Title\", \"description\":\"this\", \"priority\":1}" http://localhost:3000/api/todos/:id.json




