namespace :user do

    namespace :seed do
        task :create_users => :environment do
            2.times do
            User.create(username: 'Rake Ahmed User', password: 'testtest')
            end
        end
    end
  
  end