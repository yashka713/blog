# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#add Users in db users

#TODO
#with gravatar
User.create(first_name: 'Yaroslav',
            last_name: 'Liakh',
            email: 'liakhyaroslav@gmail.com',
            password: 'liakhyaroslav@gmail.com',
            password_confirmation: 'liakhyaroslav@gmail.com',
            phone: '0506456220')
#with custom avatar
User.create(first_name: 'Peter',
            last_name: 'Parker',
            email: 'yaroslav@example.com',
            password: 'yaroslav@example.com',
            password_confirmation: 'yaroslav@example.com',
            phone: '000000000')

Post.create(title: 'Lorem Ipsum',
            content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est
laborum.',
            user_id: 1)