- MVC
- Model, View, Controller

- Start the server
  rails s -b $IP -p $PORT
  https://ruby-on-rails-richardmeister.c9users.io

- To modify the default page
  Open routes.rb then write: root "application#hello"

- To set the "hello" application in the controller
  In application_controller enter
  def hello
    render plain: "Hello world!"
  end

- To create a new controller
  - Open routes.rb then write: 
  root "pages#home" (pages controller, home action)
  - new file in controllers folder named in snake_case "pages_controller.rb"
  (snake_case: hello_world) <- For controller names
  (CamelCase: HelloWorld) <- For action names
  - Then open "pages_controller.rb" and write
  class PagesController < ApplicationController #CamelCase using the < means "part of"
    def home #define the home action or method
    end
  end
  - Then create the view, new folder named "pages" <- Required
  - Then create a file "home.html.erb" and write
  <h1>Hello world!<\h1>
  <h2>This is a test</h2>

CHAPTER 18
  - Migration: a file that we use to impact the database
  - table name (lower case and plural)
  - Model name - singular, extension rb, class definition -> CamelCase

  - Creating Todos
  - rails generate migration create_todos
  - then enter the new file inside of db>migrate>...._create_todo
  - and add the following code in the "create_table :todos do |t|"" expression
      t.string :name #string is only 256 lenght max
      t.text :description
  - then use this command rails db:migrate to run all migration files
  
  - command "rails console" to interact directly with your application

CHAPTER 20
  - Create a model
  -   Inside of models create a new file
  -   singular and lowercase with .rb extension (todo.rb)
  -   then you write the class in CamelCase as part of application_record.rb:
  -     class Todo < ApplicationRecord
  -     end
  -   Let's create a registry:
  -   Initiate a new Todo object, then save the object to database,
  -   In rails console:
  -   .new -> Creates a new object, but doesn't save it to database
  -   .create -> This will impact database right away as no errors
  -   .find -> Find by id
  -   .last -> Get last register
  -   .first -> Get first register
  -   .destroy -> Erase selected register
  -   .save -> Save selected register
  -   ex: lunch = Todo.new(name: "lunch", description: "I am going to cook lunch")
  -   To perform a validation:
  -   Go to todo.rb:
  -   then write inside of Todo:
  -     validates :name, presence: true
  -   If you try to save an empty name register it won't
  -   write "register.errors.any?" to check if there is an error
  -   and "register.errors.full_messages" to check the complete description
  -   *Every time you do a modification write in the console
  -     reload!
  -   Homework: 
  -     What is a primary Key? Paste the description to QA
  -     Other rails console methods (Google)
  -     Study the following:
  -       guides.rubyonrails.org -> Guides Index -> All models (Basics, Migration, Validations)
  
CHAPTER 29
  - Flash (is a hash)
  - Todo.find(params[:id])
  
CHAPTER 31
  - git config --global user.name "Ricardo Hernandez"
  - git config --global user.email "ricardo.hdez.n@gmail.com"
  - Initialize a git repository for the application
    - Make sure you are in the root of the rails application
    - git init
  - Add all of your file in the stashing area
    - git add -Add
  - To be sure you can type: git status
  - To save everything that you stash
    - git commit -m "type message"

CHAPTER 33
  - Add edit to the controller
  - Create edit.html.erb at views/todos
  - Add update to the controller

CHAPTER 36
  - Add index action to the controller
  - Create index.html.erb
  - to create a link call ruby %= link_to