# README

First we go to the folder we want to save the project file end then we do Git bash here end then we hit:
'rails new ProjectName -T -d mysql' to the console so to create the project.
Second we create the database hit: rails db:create, Then we do bundle install so to install all the nessecery Gems.
After that we install the Device gem, the simple_form gem end the sass-bootstrap gem from the github.

rails g resource article --no-assets -> create a resource.
rails g migration -> to generate a migration file.
rails db:migrate -> to do the migration.
rails db:rollback ->undo the last migration.
rails s -> start the server.-> Ctrl + c -> stop the server.
localhost:3000 -> is the port to the broswer.

we hit to the console: 'rails g resource article --no-assets', first we go to app/articles_controller.rb to make the actions
then we go to app/views/article so to make the template end then to config/routes.rb to see if there is created the resource: 'articles' This will add all the routes for the model article.
In the end we go to app/model/article.rb to make the validations.