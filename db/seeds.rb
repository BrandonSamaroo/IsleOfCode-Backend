# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create({
    email: "Brandon.Samaroo@gmail.com",
    name: "Brandon Samaroo",
    isCompany: false
})
User.create({
    email: "Alex.Blom@gmail.com",
    name: "Alex Blom",
    isCompany: true
})


Content.create({
    title: "first content",
    description: "this is a test",
    user_id: 1
})

Content.create({
    title: "second content",
    description: "this is a test 2",
    user_id: 2
})

Content.create({
    title: "third content",
    description: "this is a test 3",
    user_id: 1
})

Content.create({
    title: "forth content",
    description: "this is a test 4",
    user_id: 2
})