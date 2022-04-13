puts "🌱 Seeding spices..."

#Language seed data
Language.create(id: 1, name: "Ruby", description: "Ruby is an Object-oriented language that is perfect for backend and API creation.")
Language.create(id: 2, name: "Javascript", description: "Over 97% of websites use JavaScript on the client side for web page behavior, often incorporating third-party libraries. All major web browsers have a dedicated JavaScript engine to execute the code on users' devices, making it a language for frontend web development.")

#Commands seed data
Command.create(id: 1, name: ".tally", description: "Counts the occurrences of each element and returns a hash with the elements of the collection as keys and the corresponding counts as values.", language_id: 1)
Command.create(id: 2, name: ".count", description: "Returns the number of items in an array/hash. If an argument is given, the number of items in the array that are equal to item are counted.",  language_id: 1)
Command.create(id: 3, name: ".length", description: "Returns the length of the string or number of items in an array.", language_id:2)
Command.create(id: 4, name: ".split()", description: "Splits the string into an array that contains the character provided in the argument.", language_id:2)

puts "✅ Done seeding!"
