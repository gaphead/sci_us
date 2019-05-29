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

print "Creating projects"

apairs.remote_photo_url = "https://is4-ssl.mzstatic.com/image/thumb/Purple127/v4/c9/61/69/c96169d0-8eae-851b-e506-83396b270117/pr_source.jpg/246x0w.jpg"
apairs.save

print "."

puts "Done"

