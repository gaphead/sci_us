require 'json'

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
  category: "physics",
  price_cents: 10000
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

stars = Project.new(
  name: 'Starmap',
  short_description: "Help map the stars",
  long_description: "Scientisits need help recognizing constalations",
  url: 'https://placeholder.com',
  location: 'Montreal',
  organization: 'Mcgill',
  org_description: 'Mcgill University',
  active: true,
  category: "astronomy"
)

weather = Project.new(
  name: 'Weather Rescue',
  short_description: "Help unearth some of the UK's earliest weather records",
  long_description: "Learning more about the weather relies on having detailed observations, but the further back in time we look the rarer these observations become.",
  url: 'https://www.zooniverse.org/projects/edh/weather-rescue',
  location: 'England',
  organization: 'British Science Association',
  org_description: 'The British Science Association (BSA)’s vision is a world where science is put at the heart of society and culture.',
  active: true,
  category: "ecology"
)

civ_war = Project.new(
  name: "African American Civil War Soldiers",
  short_description: "Help transcribe real letters from the civil war",
  long_description: "This crowd-sourcing transcription project is a collaboration between historians, social scientists and the African American Civil War Museum. Our goals are to improve our knowledge of the African Americans who fought for freedom in the American Civil War, to provide descendants of the soldiers with access to information on their ancestors, and to present students of history with primary documents from a pivotal moment in African American history. To do this we are building a comprehensive database of the estimated 200,000 soldiers who formed the United States Colored Troops",
  url: "https://www.zooniverse.org/projects/usct/african-american-civil-war-soldiers",
  location: "online",
  organization: " African American Civil War Museum",
  org_description: "African American Civil War Museum provides students of history with an opportunity to explore primary sources, whilst contributing to their preservation and study. It will also allow African American genealogists to link descendants to the soldiers and through them to earlier ancestors. The transcription process allows users to leave comments, raising awareness of individual soldier's stories and the challenges they faced in a white-dominated Army.",
  active: true,
  category: "history"
)

cosmic = Project.new(
  name: "Cosmic",
  short_description: "Explore the surface of Mars!",
  long_description: "The exploration of space, arguably the most remarkable undertaking in human history, has improved our scientific and technical knowledge, inspired current and future generations, and fundamentally transformed our perspectives on who we are, where we live, and how we fit into the grand scheme of the universe. We make new discoveries about our planetary neighbors on a continual basis. One of the challenges in space exploration is the extremely small amount of data that can be sent between Earth and a distant spacecraft. Because keeping humans alive in space is so expensive and difficult, most space missions are in effect highly specialized robots. It's very easy for a robot to take a lot of data with a camera or scientific instrument... far too much to send home. While questions like, Do the images look reasonable? Which ten images are the important ones to send to Earth?" "What surprising changes or new findings did you observe? are understandable to a human expert, traditional programming makes coding these abilities into robots very challenging. From the days of Explorer I all the way to today, most missions follow the concept Send the data directly to Earth, don't collect more than you can send, and let the humans decide what to collect next. This approach is generally effective, but it can lead to idle time in which the spacecraft is waiting on new instructions, and it precludes the ability to capture and respond to dynamic or transient events (like dust devils or cryovolcanic plumes).",
  url: "https://www.zooniverse.org/projects/wkiri/cosmic",
  location: "online",
  organization: "PL Machine Learning and Instrument Autonomy group. ",
  org_description: "The Content-based Object Summarization to Monitor Infrequent Change (COSMIC) team is a part of the JPL Machine Learning and Instrument Autonomy group. We employ machine learning methods in support of scientific investigations and space exploration.",
  active: true,
  category: "astronomy"
)

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

organ = Project.new(
  name: "Where Are My Body Organs?",
  short_description: "Can you determine the location of the organs and structures within the human body?",
  long_description: "When the general population have to attend a GP appointment, Accident & Emergency, or any other healthcare visit they often describe pain or discomfort in a specific area, for instance stomach pain may be listed anywhere in the abdomen. The healthcare professional who diagnoses and treats you has studied anatomy and will know the structure(s) that are affected. However, some members of the public know a large amount of anatomy. An example would be someone who spends time in a gym, might have familiarity with, for examples some muscles. This research intends to highlight exactly how much the general public know about their own body and thus utilise it, via publication as a research article(s), to illustrate the need for sound anatomical knowledge from medical professionals and to help everyone understand where many of the common organs and structures are in the body. We also aim to highlight how anatomical knowledge is different across different groups of people, i.e is there a difference between males and females? If you have been to a visit a healthcare professional recently do you perform better, because you are more aware of structures? Does the knowledge of people change as they age?",
  url: "https://www.zooniverse.org/projects/h-spiers/where-are-my-body-organs",
  location: "online",
  organization: "American Association of Anatomists",
  org_description: "The American Association of Anatomists was founded by Joseph Leidy in Washington, D.C. in 1888 for the “advancement of anatomical science.” Today, via research, education, and professional development activities, AAA serves as the professional home for an international community of biomedical researchers and educators focusing on the structural foundation of health and disease.",
  active: true,
  category: "medicine"
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

owl = Project.new(
  name: "Owl Watch",
  short_description: "The western burrowing owl needs our help!",
  long_description: "Wildwatch Burrowing Owl seeks to document the behaviors and developmental milestones of burrowing owl families “holed up” in Otay Mesa, CA. Motion-activated cameras are strategically positioned at burrow entrances to collect candid data. We need your help classifying the images! ",
  url: "https://www.zooniverse.org/projects/sandiegozooglobal/wildwatch-burrowing-owl",
  location: "Online",
  organization: " Manitoba Burrowing Owl Recovery Program",
  org_description: "The Manitoba Burrowing Owl Recovery Program is a reintroduction, research, and educational organization that was established in 2010 to address the on-going decline of Burrowing Owls in southwestern Manitoba. The program began by reintroducing a small number of owl pairs in 2010 with cooperation from private landowners in southwestern Manitoba.",
  active: true,
  category: "animals"
)

nycitysound = Project.new(
  name: "Sounds of New York City: (SONYC)",
  short_description: "Help us address one of the biggest issues facing urban residents.",
  long_description: "Taking aim at New Yorkers’ biggest civic complaint – noise – a team of scientists from NYU, working with collaborators at Ohio State University, have launched a first-of-its-kind comprehensive research initiative to understand and address noise pollution in New York City and beyond. The project – which involves large-scale noise monitoring – leverages the latest in machine learning technology, big data analysis, and citizen science reporting to more effectively monitor, analyze, and mitigate urban noise pollution. Known as Sounds of New York City (SONYC), this multi-year project has received a $4.6 million grant from the National Science Foundation and has the support of City health and environmental agencies.",
  url: "https://www.zooniverse.org/projects/anaelisa24/sounds-of-new-york-city-sonyc",
  location: "Online",
  organization: "NYU and Ohio State University",
  org_description: "major universities in the USA",
  active: true,
  category: "social_studies"
)

floatingForests = Project.new(
  name: "Floating Forests",
  short_description: "Discover Floating Forests",
  long_description: "Welcome to Floating Forests, where you can help us uncover the history of Giant Kelp forests around the globe. Most life on the seafloor can only be sampled by SCUBA divers or dredging up samples from the deep. This kind of data requires a ton of (really fun) effort to collect, but it means we’re limited to places we can get to! Given the worldwide distribution of kelp, we need your help to track it across time and space",
  url: "https://www.zooniverse.org/projects/zooniverse/floating-forests/about/team",
  location: "Online",
  organization: "personal reaserch",
  org_description: "professors of the university of california",
  active: true,
  category: "oceanography"
)

snapshotzebra = Project.new(
  name: "Snapshot Mountain Zebra",
  short_description: "Help us explore the wildlife of Mountain Zebra National Park, South Africa!",
  long_description: "The Mountain Zebra National Park (MZNP), 28,412 hectares in size, is situated in the Eastern Cape province of South Africa and is found in a transitional area between the Grassland, Nama Karoo and Albany Thicket biomes. The uniqueness of this transitional area means the MZNP conserves important ecological processes. It is one of four National Parks, including Addo Elephant, Camdeboo and Karoo, that forms part of the Frontier cluster of the South African National Parks.",
  url: "https://www.zooniverse.org/projects/meredithspalmer/snapshot-mountain-zebra",
  location: "Online",
  organization: "Nelson Mandela University",
  org_description: "professors of the university of Nelson Mandela University",
  active: true,
  category: "animals"
)

monkeyhealth = Project.new(
  name: "Monkey Health Exporer",
  short_description: "Help us learn more about monkey health by identifying white blood cell types.",
  long_description: "Our research team is studying the health of rhesus macaque monkeys on the island of Cayo Santiago in Puerto Rico. We are working with many other scientists as part of a large collaborative project to improve understanding of the relationship between the behaviour of the monkeys and the genes they have.",
  url: "https://www.zooniverse.org/projects/mbarrierz/monkey-health-explorer",
  location: "Online",
  organization: "University of North Carolina",
  org_description: "professors from the University of UNC",
  active: true,
  category: "biology"
)




print "Creating projects"

snapshotzebra.remote_photo_url = "https://panoptes-uploads.zooniverse.org/production/project_avatar/92f22254-0e0a-44cb-a0dc-5d7d6f6d0f23.jpeg"
snapshotzebra.save

print "."

nycitysound.remote_photo_url = "https://panoptes-uploads.zooniverse.org/production/project_avatar/940ed797-9f4e-4c69-b5e1-1f837527b112.png"
nycitysound.save

print "."

owl.remote_photo_url = "https://panoptes-uploads.zooniverse.org/production/project_avatar/5dd03c83-53ea-4162-a1b5-2802939d10d3.jpeg"
owl.save

print "."

floatingForests.remote_photo_url = "https://panoptes-uploads.zooniverse.org/production/project_avatar/546ce22c-f6b2-4fbb-a883-ab4157007659.png"
floatingForests.save

print "."

civ_war.remote_photo_url = "https://panoptes-uploads.zooniverse.org/production/project_avatar/2d64c10f-b384-430a-82cd-c0cf6055ae06.jpeg"
civ_war.save

print "."

cosmic.remote_photo_url = "https://panoptes-uploads.zooniverse.org/production/project_avatar/e448e31c-8555-4ad3-9f67-e46616861762.png"
cosmic.save

print "."

sci_lab.remote_photo_url = "https://www.scienceathome.org/wp-content/uploads/2018/05/slsd1-1200x691.png"
sci_lab.save

print "."

organ.remote_photo_url = "https://panoptes-uploads.zooniverse.org/production/project_avatar/fe9cc866-234f-4bf9-8019-b7d4db48efa1.jpeg"
organ.save

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

stars.remote_photo_url = 'https://blog.bestbuy.ca/wp-content/uploads/2017/04/Telescopes-and-star-gazing-essentials-1.jpg'
stars.save

print "."

weather.remote_photo_url = 'https://www.queenelizabethparkuganda.com/wp-content/uploads/2019/03/placeholder_thumb_1152x648.jpg'
weather.save

print "."

monkeyhealth.remote_photo_url = "https://en.tengrinews.kz/userdata/news_en/2013/news_21610/photo_31201.jpg"
monkeyhealth.save

print "."

puts ""
puts "Creating projects from zoonistolen"

# Define word arrays to match project descriptions to category
animal_words = %w(fynbos wildlife owls mammal plant animals zebra hawk fauna bird monkey penguins invertibrates manatee grouse orangutan predators kruger seabirds seals giraffes lion bats cats)
bio_words = %w()
chem_words = %w()
eco_words = %w()
hist_words = %w()
med_words = %w()
ocean_words = %w()
phys_words = %w()
ast_words = %w()
social_words = %w()

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
    chem_words.each do |chem_word|
      if description.downcase.include?(chem_word)
        category = "chemistry"
      end
    end
    eco_words.each do |eco_word|
      if description.downcase.include?(eco_word)
        category = "ecology"
      end
    end
    hist_words.each do |hist_word|
      if description.downcase.include?(hist_word)
        category = "histroy"
      end
    end
    med_words.each do |med_word|
      if description.downcase.include?(med_word)
        category = "medicine"
      end
    end
    ocean_words.each do |ocean_word|
      if description.downcase.include?(ocean_word)
        category = "oceanography"
      end
    end
    phys_words.each do |phys_word|
      if description.downcase.include?(phys_word)
        category = "physics"
      end
    end
    ast_words.each do |ast_word|
      if description.downcase.include?(ast_word)
        category = "astronomy"
      end
    end
    social_words.each do |social_word|
      if description.downcase.include?(social_word)
        category = "social_studies"
      end
    end

    project_url = "#{url}/#{project['slug']}"
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
