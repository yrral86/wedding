RAILS_ENV=production
rake db:migrate
rails server thin -p 3000
