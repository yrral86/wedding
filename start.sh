export RAILS_ENV=production
rake db:migrate
rake assets:precompile
rails server thin -p 3000 -b 0.0.0.0
