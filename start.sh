export RAILS_ENV=production
rake db:migrate
rake assets:precompile
rails server thin -p 3000
