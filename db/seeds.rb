# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Project.destroy_all
User.destroy_all

erik = User.new(
  first_name: "Erik",
  last_name: "Pendleton",
  email: "emailerik@email.com",
  password: "123456"
)

print "creating users"

erik.remote_photo_url = "https://lh3.googleusercontent.com/-FqOP9ADmAUU/W04mHOMxzyI/AAAAAAAAABw/VlrHRB759PIx2SRuysFlMn0N8u7jpBqVQCEwYBhgL/w280-h280-p/ERik.png"
erik.save

print "."

puts "done"


fuck = Project.new(
    name: 'starmap',
    short_description: "help map the stars",
    long_description: "scientisits need help recognizing constalations",
    url: 'https://placeholder.com',
    location: 'montreal',
    organization: 'mcgill',
    org_description: 'mcgill is shitty dumb university that sucks, but hey they do science somtimes',
    active: true
  )

fuck.remote_photo_url = 'https://blog.bestbuy.ca/wp-content/uploads/2017/04/Telescopes-and-star-gazing-essentials-1.jpg'
fuck.save
