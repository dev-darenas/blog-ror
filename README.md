# Install app


Create model
`````
rails g model NombreSingular campo:tipo_campo campo:tipo_campo campo:tipo_campo
`````

Create Controller
`````
rails g controller NombreControllerPlural index create new update edit show destroy
`````

`````
  bundle install
  rake db:setup
````
