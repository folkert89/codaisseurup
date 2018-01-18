# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Photo.destroy_all
Category.destroy_all
Event.destroy_all
Profile.destroy_all
User.destroy_all

modern_and_minimal = Category.create(name: "Modern and Minimal")
sleek_and_sophisticated = Category.create(name: "Sleek and Sophisticated")
warm_and_cozy = Category.create(name: "Warm and Cozy")
room_with_a_view = Category.create(name: "Room with a View")
elegant_and_ornate = Category.create(name: "Elegant and Ornate")
a_mans_touch = Category.create(name: "A Man's Touch")
white_washed = Category.create(name: "White Washed")
tempting_terrace = Category.create(name: "Tempting Terrace")

miriam = User.create(email: "miriam@codaisseurbnb.com", password: "abcd1234")
wouter = User.create(email: "wouter@codaisseurbnb.com", password: "abcd1234")
matt = User.create(email: "matt@codaisseurbnb.com", password: "abcd1234")

event1 = Event.create!(
  name:"Basketball",
  description:"You will never forget your stay!",
  location:"Amsterdam",
  price: nil,
  capacity:8,
  includes_food:false,
  includes_drinks:false,
  starts_at:Time.now,
  ends_at:2.days.from_now,
  active:true,
  user: miriam,
  categories: [modern_and_minimal, sleek_and_sophisticated]
)

event2 = Event.create!(
  name:"Football",
  description:"You will never forget your stay!",
  location:"Rotterdam",
  price: nil,
  capacity:8,
  includes_food:false,
  includes_drinks:false,
  starts_at:Time.now,
  ends_at:2.days.from_now,
  active:true,
  user: wouter,
  categories: [modern_and_minimal, white_washed]
)

event3 =Event.create!(
  name:"Bowling",
  description:"You will never forget your stay!",
  location:"Rotterdam",
  price: nil,
  capacity:8,
  includes_food:false,
  includes_drinks:false,
  starts_at:Time.now,
  ends_at:2.days.from_now,
  active:true,
  user: matt,
  categories: [elegant_and_ornate, a_mans_touch]
)

photo1 = Photo.create!(remote_image_url: "http://res.cloudinary.com/folkert89/image/upload/v1516279708/koffie.jpg", event: event1)
photo2 = Photo.create!(remote_image_url: "http://res.cloudinary.com/folkert89/image/upload/v1516279645/photo-1465188035480-cf3a60801ea5_zkaexq.jpg", event: event1)
photo3 = Photo.create!(remote_image_url: "http://res.cloudinary.com/folkert89/image/upload/v1516279610/wrev1ljvQ6KlfyljCQG0_lion_cya90z.jpg", event: event1)
