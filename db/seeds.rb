require 'json'

UserCategoryCounter.destroy_all
Donation.destroy_all
Favorite.destroy_all
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
  active: true,
  category: "physics"
)

seti = Project.new(
  name: "SETI",
  short_description: "Uses Internet-connected computers in the Search for Extraterrestrial Intelligence (SETI)",
  long_description: "Radio telescope signals consist primarily of noise (from celestial sources and the receiver's electronics) and man-made signals such as TV stations, radar, and satellites. Modern radio SETI projects analyze the data digitally. More computing power enables searches to cover greater frequency ranges with more sensitivity. Radio SETI, therefore, has an insatiable appetite for computing power.",
  url: "https://setiathome.berkeley.edu/",
  location: "Online",
  organization: "Berkeley",
  org_description: "SETI@home was originally launched in May 1999",
  active: true,
  category: "astronomy"
)

mind = Project.new(
  name: "MindModeling",
  short_description: "Uses volunteer computing for the advancement of cognitive science",
  long_description: "The research focuses on utilizing computational cognitive process modeling to better understand the human mind",
  url: "https://mindmodeling.org/beta/",
  location: "Online",
  organization: "University of Dayton Research Institute",
  org_description: "Not for profit based in Dayton, OH",
  active: true,
  category: "social_studies"
)

# stars = Project.new(
#   name: 'Starmap',
#   short_description: "Help map the stars",
#   long_description: "Scientisits need help recognizing constalations",
#   url: 'https://placeholder.com',
#   location: 'Montreal',
#   organization: 'Mcgill',
#   org_description: 'Mcgill University',
#   active: true,
#   category: "astronomy"
# )

sci_lab = Project.new(
  name: "Skill Lab: Science Detective",
  short_description: "Have you ever thought about what makes you special as a gamer?",
  long_description: "Skill Lab: Science Detective is a collection of minigames with a detective story theme that challenges your mind in different ways. The game enables you to test your gaming brain skills. In this process, ScienceAtHome can generate a map of your cognitive skills at different levels. We want to know your strengths and weaknesses for better understanding how they affect your performance in the other games from ScienceAtHome. Maybe having a good memory makes players rock the Alien Game? Is hand-eye coordination the basis for success in Quantum Moves? We can't wait to find out!",
  url: "https://www.scienceathome.org/games/skill-lab-science-detective/",
  location: "online",
  organization: "ScienceAtHome",
  org_description: "ScienceAtHome is a diverse team of scientists, game developers, designers and visual artists based at Aarhus University, Denmark. We create fun scientific games, with the aim of revolutionising scientific research and teaching by game-play!",
  active: true,
  category: "chemistry"
)

aliengame = Project.new(
  name: "Alien Game",
  short_description: "How to solve complex problems?",
  long_description: "Computers are getting smarter and smarter every day. A computer can tell you which exit to take off the highway or what kind of books to read. The one thing computers can’t do (yet) is solve complex problems. And problem-solving is vital for business AND for building better computers!",
  url: "https://www.scienceathome.org/games/alien-game/",
  location: "browser",
  organization: "ScienceAtHome",
  org_description: "ScienceAtHome is a diverse team of scientists, game developers, designers and visual artists based at Aarhus University, Denmark. We create fun scientific games, with the aim of revolutionising scientific research and teaching by game-play!",
  active: true,
  category: "astronomy"
)

ebird = Project.new(
  name: "Cornell's Birdfeeder Watch",
  short_description: "Watch and listen to help us better understand Red-Tailed Hawk vocalizations and behavior. Join the Bird Cams Lab to document Red-tailed Hawk behavior and vocalizations using clips from a 24/7 camera at a Red-Tailed Hawk nest on Cornell University's campus. The Bird Cams Lab is a new project from the Cornell Lab of Ornithology, funded by the National Science Foundation. The project aims to connect cam viewers with researchers in an online space to co-create scientific investigations, involving viewers in every step of the scientific process: observing, questioning, collecting and analyzing data, and sharing results.",
  long_description: "Previous researchers that have documented Red-tailed vocalizations have been mostly limited to what they can hear on the ground or when briefly checking a nest. The 24/7 Red-tailed Hawk cam gives us the chance to document vocalizations right at the nest for the entire season without disturbing the birds! Join us for this first round of clips in which we will look at the first week of footage after the nestlings start to hatch. We also invite you to learn more about the Bird Cams Lab project and sign up to help us test new activities for co-created research investigations.",
  about: "It's long been known that many bird species interact and share space at bird feeders, but there are still many questions to answer about the factors that influence these interactions. In this iteration of Battling Birds, we will take a look at footage from the Cornell Lab of Ornithology's Sapsucker Woods FeederWatch Cam, and note the number of species, the number of individuals, and whether there are any displacements, one type of aggressive interaction. This will help us answer the main research question, How does the diversity of species and abundance of individuals affect behavioral interactions (specifically displacements) at a feeder?",
  context: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo possimus fugit, harum architecto corporis vitae iste ducimus corrupti sapiente. Nam voluptate quaerat dolore sapiente rem veritatis possimus nulla quos debitis.",
  significance: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Impedit id aspernatur, totam qui ut voluptatum, perspiciatis quia dolor consequuntur a, odio veniam quas fugit! In voluptatem blanditiis reprehenderit, numquam a.",
  goals: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptates alias optio nulla quibusdam, nemo et perferendis! Repellat, eos, nobis ea nostrum eaque ex non quis quam et aliquid iusto saepe.",
  url: "http://cams.allaboutbirds.org/channel/40/Cornell_Lab_FeederWatch_Cam/",
  location: "browser",
  organization: "Cornell Lab",
  org_description: "ScienceAtHome is a diverse team of scientists, game developers, designers and visual artists based at Aarhus University, Denmark. We create fun scientific games, with the aim of revolutionising scientific research and teaching by game-play!",
  active: true,
  category: "animals"
)

print "Creating projects"

sci_lab.remote_photo_url = "https://www.scienceathome.org/wp-content/uploads/2018/05/slsd1-1200x691.png"
sci_lab.save

print "."

aliengame.remote_photo_url = "https://www.scienceathome.org/wp-content/uploads/2017/02/Alien-Game-slideshow1-1200x663.jpg"
aliengame.save

print "."

apairs.remote_photo_url = "https://is4-ssl.mzstatic.com/image/thumb/Purple127/v4/c9/61/69/c96169d0-8eae-851b-e506-83396b270117/pr_source.jpg/246x0w.jpg"
apairs.save

print "."

seti.remote_photo_url = "https://images.unsplash.com/photo-1465101162946-4377e57745c3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1357&q=80"
seti.save

print "."

mind.remote_photo_url = "https://static.thenounproject.com/png/51575-200.png"
mind.save

print "."

ebird.remote_photo_url = "https://images.unsplash.com/photo-1558692398-8045562d5988?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80"
ebird.save

print "."
# stars.remote_photo_url = 'https://blog.bestbuy.ca/wp-content/uploads/2017/04/Telescopes-and-star-gazing-essentials-1.jpg'
# stars.save

# print "."

puts ""

print "Creating projects from zoonistolen"

# Define word arrays to match project descriptions to category
animal_words = %w(fynbos wildlife owls mammal animals zebra hawk fauna bird monkey penguins invertibrates manatee grouse orangutan predators kruger seabirds seals giraffes lion bats cats)
bio_words = %w(arthropods diversity species biological viruses cells organs medicine specimens brains antibiotics trail jarrah)
# chem_words = %w()
eco_words = %w(forests forest ocean marine vessel leaves plant plants climate weather manchester leaf)
hist_words = %w(archivist archivists mysteries handwritten notes wwi military transcribe war cairo illustraions history historical)
# med_words = %w()
# ocean_words = %w()
# phys_words = %w()
ast_words = %w(astronomy vibration space stars star galaxy galaxies hyper planet planets cosmic mars spacetime meteor meteors solar moon muon)
# social_words = %w()

# Runs through 4 different JSON files, parses, and creates projects
category = ""
counter = 1
4.times do
  break if counter > 4
  serialized_projects = File.read("app/helpers/page_#{counter}_zooniverse.html")
  projects = JSON.parse(serialized_projects)
  url = "https://www.zooniverse.org"

  # Runs through each project
  projects["projects"].each do |project|
    name = project["display_name"]
    description = project["description"]
    # Adds category to project based on description
    hist_words.each do |hist_word|
      if description.downcase.include?(hist_word)
        category = "history"
      end
    end
    animal_words.each do |animal_word|
      if description.downcase.include?(animal_word)
        category = "animals"
      end
    end
    bio_words.each do |bio_word|
      if description.downcase.include?(bio_word)
        category = "biology"
      end
    end
    # chem_words.each do |chem_word|
    #   if description.downcase.include?(chem_word)
    #     category = "chemistry"
    #   end
    # end
    # eco_words.each do |eco_word|
    #   if description.downcase.include?(eco_word)
    #     category = "ecology"
    #   end
    # end
    # med_words.each do |med_word|
    #   if description.downcase.include?(med_word)
    #     category = "medicine"
    #   end
    # end
    # ocean_words.each do |ocean_word|
    #   if description.downcase.include?(ocean_word)
    #     category = "oceanography"
    #   end
    # end
    # phys_words.each do |phys_word|
    #   if description.downcase.include?(phys_word)
    #     category = "physics"
    #   end
    # end
    ast_words.each do |ast_word|
      if description.downcase.include?(ast_word)
        category = "astronomy"
      end
    end
    # social_words.each do |social_word|
    #   if description.downcase.include?(social_word)
    #     category = "social_studies"
    #   end
    # end

    project_url = "#{url}/projects/#{project['slug']}"
    classifications = project["classifications_count"]
    image_url = project['avatar_src']
    new_project = Project.new(
      name: name,
      short_description: description,
      url: project_url,
      category: category
    )
    new_project.remote_photo_url = "https://#{image_url}"
    new_project.save!
    print "."
  end
  counter += 1
end

puts "Done"
