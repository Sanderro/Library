# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Book.create(title: 'Harry Potter', author: 'J.K. Rowling', category: 'fantasy')
Book.create(title: 'The Hobbit', author: 'J.R.R. Tolkien', category: 'fantasy')
Book.create(title: 'Lord of The Rings', author: 'J.R.R. Tolkien', category: 'fantasy')
Book.create(title: 'Last of Tanith', author: 'Dan Abnett', category: 'dark fantasy')
Member.create(email: 'janekk@gmail.com', firstname: 'Jan', lastname: 'Kowalski', password: '111', password_confirmation: '111')
Member.create(email: 'agaw@gmail.com', firstname: 'Agnieszka', lastname: 'Wojcik', password: '222', password_confirmation: '222')
Member.create(email: 'kraw@gmail.com',firstname: 'Sebastian', lastname: 'Krawies', password: '333', password_confirmation: '333')


