namespace :user do

    namespace :seed do
        task :create_users => :environment do
            2.times do
                puts 'Test'
            end
        end
    end
  
  end