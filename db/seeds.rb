puts "🌱 Seeding spices..."

#Language seed data
Language.create(id: 1, name: "Ruby", description: "Ruby is an Object-oriented language that is perfect for backend and API creation.")
Language.create(id: 2, name: "Javascript", description: "Over 97% of websites use JavaScript on the client side for web page behavior, often incorporating third-party libraries. All major web browsers have a dedicated JavaScript engine to execute the code on users' devices, making it a language for frontend web development.")

#Methods seed data
Command.create(id: 1, name: "Ruby", description: "Ruby is an Object-oriented language that is perfect for backend and API creation.")

puts "✅ Done seeding!"
