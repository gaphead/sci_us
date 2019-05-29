# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Project.destroy_all
User.destroy_all

# Users

erik = User.new(
  first_name: "Erik",
  last_name: "Pendleton",
  email: "emailerik@email.com",
  password: "123456"
)

alex = User.new(
  first_name: "Alex",
  last_name: "Wagon",
  email: "emailalex@email.com",
  password: "123456"
)

print "Creating users"

erik.remote_photo_url = "https://lh3.googleusercontent.com/-FqOP9ADmAUU/W04mHOMxzyI/AAAAAAAAABw/VlrHRB759PIx2SRuysFlMn0N8u7jpBqVQCEwYBhgL/w280-h280-p/ERik.png"
erik.save

print "."

alex.remote_photo_url = "https://www.alextangpsychology.com/uploads/8/3/0/2/83023440/published/file-000_3.jpeg?1496814685"
alex.save

print "."

puts "Done"


# Projects

apairs = Project.new(
  name: "Amicable Pairs",
  short_description: "Uses Internet-connected computers to find new amicable pairs",
  long_description: "Though mathematics is not an experimental science, mathematicians often look for examples to test conjectures (which they then hope to prove). As the number of examples increases, so does (in a sense) their understanding of the distribution. The goal is to collect all amicable numbers up to a very large limit. This data will facilitate theoretical research in the field: 1, 2, 3 to name a few examples. It will also help to improve understanding of the properties of Divisor function.",
  url: "https://sech.me/ap/index.html",
  location: "Online",
  organization: "Independant Project",
  org_description: "Mathematically inclined researchers",
  active: true
)

seti = Project.new(
  name: "SETI",
  short_description: "Uses Internet-connected computers in the Search for Extraterrestrial Intelligence (SETI)",
  long_description: "Radio telescope signals consist primarily of noise (from celestial sources and the receiver's electronics) and man-made signals such as TV stations, radar, and satellites. Modern radio SETI projects analyze the data digitally. More computing power enables searches to cover greater frequency ranges with more sensitivity. Radio SETI, therefore, has an insatiable appetite for computing power.",
  url: "https://setiathome.berkeley.edu/",
  location: "Online",
  organization: "Berkeley",
  org_description: "SETI@home was originally launched in May 1999",
  active: true
)

mindmodeling = Project.new(
  name: "MindModeling",
  short_description: "MindModeling is a research project that uses volunteer computing for the advancement of cognitive science",
  long_description: "The research focuses on utilizing computational cognitive process modeling to better understand the human mind. We need your help to improve on the scientific foundations that explain the mechanisms and processes that enable and moderate human performance and learning",
  location: "Online",
  organization: "University of Dayton Research Institute",
  org_description: "Not for profit based in Dayton, OH",
  active: true
)

print "Creating projects"

apairs.remote_photo_url = "https://is4-ssl.mzstatic.com/image/thumb/Purple127/v4/c9/61/69/c96169d0-8eae-851b-e506-83396b270117/pr_source.jpg/246x0w.jpg"
apairs.save

print "."

seti.remote_photo_url = "https://images.unsplash.com/photo-1465101162946-4377e57745c3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1357&q=80"
seti.save

print "."

mindmodeling.remote_photo_url = "https://static.thenounproject.com/png/51575-200.png"
mindmodeling.save

print "."

puts "Done"
