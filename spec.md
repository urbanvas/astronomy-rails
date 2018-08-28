README file contains the following sections: *

Application description

Installation guide (e.g. fork and clone repo, migrate db, bundle install, etc)

Contributors guide (e.g. file an issue, file an issue with a pull request, etc)

Licensing statement (e.g. This project has been licensed under the MIT open source license.)

LICENSE file is included in your repo and linked at the bottom of your README file(e.g. MIT open source license, GNU public license, Creative Commons license) *

Using Ruby on Rails for the project *

No scaffolding was used to build your project. *

Include at least one has_many relationship (please provide example including Model names and line numbers, e.g. User has_many Recipes, User model line 3) *

Include at least one belongs_to relationship (please provide example including Model names and line numbers, e.g. Recipe 
belongs_to User, Recipe model line 5) *

Include at least one has_many through relationship (please provide example including Model names and line numbers, e.g. User has_many Ingredients through Recipes, User model line 4) *

The "through" part of the has_many through includes at least one user submittable attribute. This field lives in the join table and needs to be able to be submitted via a form. (please provide attribute_name e.g. ingredients.quantity). *

Include reasonable validations for simple model objects (please provide list of model objects with validations e.g. User, Recipe, Ingredient, Item) *

Include a class level ActiveRecord scope method (please provide model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes) *

Include signup (how e.g. Devise) *

Include login (how e.g. Devise) *

Include logout (how e.g. Devise) *

Include third party signup/login (how e.g. Devise/OmniAuth, Google) *

Include nested route show or index (please provide URL e.g. users/2/recipes) *

Include nested route "new" form (please provide URL e.g. recipes/1/ingredients) *

Include form display of validation errors (please provide form URL e.g. /recipes/new) *

The application is pretty DRY *

Limited logic in controllers *

Views use helper methods if appropriate *

Views use partials if appropriate *






# Specifications for the Rails Assessment

Specs:
- [] Using Ruby on Rails for the project
- [] Include at least one has_many relationship (x has_many y e.g. User has_many Recipes)
  project has many tasks, user has many tasks
- [] Include at least one belongs_to relationship (x belongs_to y e.g. Post belongs_to User)
  tasks belong to a project and a user
- [] Include at least one has_many through relationship (x has_many y through z e.g. Recipe has_many Items through Ingredients)
  user has many projects through tasks, projects have many users through tasks
- [] The "through" part of the has_many through includes at least one user submittable attribute (attribute_name e.g. ingredients.quantity)
  tasks have a due_date and completed attribute, plus a description
- [] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)
  user -> username and password presence true
  project -> name presence true
  task -> due date and description presence true, custom validation of due date cannot be in the past
- [] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)
  Task model has -> over_due and completed scope methods
- [] Include signup (how e.g. Devise)
  user#new
- [] Include login (how e.g. Devise)
  session#new
- [] Include logout (how e.g. Devise)
  session#destroy
- [ ] Include third party signup/login (how e.g. Devise/OmniAuth)
- [] Include nested resource show or index (URL e.g. users/2/recipes)
    user_tasks_path
- [] Include nested resource "new" form (URL e.g. recipes/1/ingredients)
    users/1/tasks/new
- [] Include form display of validation errors (form URL e.g. /recipes/new)

Confirm:
- [ ] The application is pretty DRY
- [ ] Limited logic in controllers
- [ ] Views use helper methods if appropriate
- [ ] Views use partials if appropriate