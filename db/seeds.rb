puts 'CREATING ROLES'
Role.create([
                { :name => 'admin' },
                { :name => 'user' },
                { :name => 'Employer' }
            ], :without_protection => true)
puts 'SETTING UP DEFAULT USER LOGIN'
user3 = User.create! :name => 'Test1 User', :email => 'testuser@example.com', :password => 'tplease', :password_confirmation => 'tplease'
puts 'New user created: ' << user3.name
user4 = User.create! :name => 'Test2 User', :email => 'testuser2@example.com', :password => 't4please', :password_confirmation => 't4please'
puts 'New user created: ' << user4.name
user3.add_role :admin
user4.add_role :Employer



# override mass assignment, :without_protection => true
#puts 'SETTING UP DEFAULT USER LOGIN'
#user = User.create! :name => 'First User', :email => 'user@example.com', :password => 'please', :password_confirmation => 'please', :confirmed_at => DateTime.now

#puts 'New user created: ' << user.name


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

