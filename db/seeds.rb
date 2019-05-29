# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
Sketch.destroy_all

user1 = User.create(username: "JSmith")
user2 = User.create(username: "JDoe")

img = "0"*(412*277);

Sketch.create( user_id:user1.id, pointerX:100, pointerY:100, width:412, height:277, data: img)
Sketch.create(user_id: user1.id, pointerX:150, pointerY:150, width:412, height:277, data:img)
Sketch.create( user_id:user2.id, pointerX:100, pointerY: 100, width: 412, height: 277, data: img)
Sketch.create( user_id:user2.id, pointerX:150, pointerY:150, width:412, height:277, data:img)

