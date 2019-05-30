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
  catagory: "physics"
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
  catagory: "astrology"
)

mind = Project.new(
  name: "MindModeling",
  short_description: "Uses volunteer computing for the advancement of cognitive science",
  long_description: "The research focuses on utilizing computational cognitive process modeling to better understand the human mind",
  url: "https://mindmodeling.org/beta/",
  location: "Online",
  organization: "University of Dayton Research Institute",
  org_description: "Not for profit based in Dayton, OH",
  active: true
  catagory: "social studies"
)

stars = Project.new(
  name: 'Starmap',
  short_description: "Help map the stars",
  long_description: "Scientisits need help recognizing constalations",
  url: 'https://placeholder.com',
  location: 'Montreal',
  organization: 'Mcgill',
  org_description: 'Mcgill is shitty dumb university that sucks, but hey they do science somtimes',
  active: true
  catagory: "astrology"
)

weather = Project.new(
  name: 'Weather Rescue',
  short_description: "Help unearth some of the UK's earliest weather records",
  long_description: "Learning more about the weather relies on having detailed observations, but the further back in time we look the rarer these observations become.",
  url: 'https://www.zooniverse.org/projects/edh/weather-rescue',
  location: 'England',
  organization: 'British Science Association',
  org_description: 'The British Science Association (BSA)’s vision is a world where science is put at the heart of society and culture.',
  active: true
  catagory: "ecology"
)

civ_war = Project.new(
  name: "African American Civil War Soldiers",
  short_description: "Help transcribe real letters from the civil war",
  long_description: "This crowd-sourcing transcription project is a collaboration between historians, social scientists and the African American Civil War Museum. Our goals are to improve our knowledge of the African Americans who fought for freedom in the American Civil War, to provide descendants of the soldiers with access to information on their ancestors, and to present students of history with primary documents from a pivotal moment in African American history. To do this we are building a comprehensive database of the estimated 200,000 soldiers who formed the United States Colored Troops",
  url: "https://www.zooniverse.org/projects/usct/african-american-civil-war-soldiers",
  location: "online",
  organization: " African American Civil War Museum",
  org_description: "African American Civil War Museum provides students of history with an opportunity to explore primary sources, whilst contributing to their preservation and study. It will also allow African American genealogists to link descendants to the soldiers and through them to earlier ancestors. The transcription process allows users to leave comments, raising awareness of individual soldier's stories and the challenges they faced in a white-dominated Army.",
  active: true
  catagory: "history"
)
cosmic = Project.new(
  name: "Cosmic",
  short_description: "Explore the surface of Mars!",
  long_description: "The exploration of space, arguably the most remarkable undertaking in human history, has improved our scientific and technical knowledge, inspired current and future generations, and fundamentally transformed our perspectives on who we are, where we live, and how we fit into the grand scheme of the universe. We make new discoveries about our planetary neighbors on a continual basis. One of the challenges in space exploration is the extremely small amount of data that can be sent between Earth and a distant spacecraft. Because keeping humans alive in space is so expensive and difficult, most space missions are in effect highly specialized robots. It's very easy for a robot to take a lot of data with a camera or scientific instrument... far too much to send home. While questions like, Do the images look reasonable? Which ten images are the important ones to send to Earth?" "What surprising changes or new findings did you observe? are understandable to a human expert, traditional programming makes coding these abilities into robots very challenging. From the days of Explorer I all the way to today, most missions follow the concept Send the data directly to Earth, don't collect more than you can send, and let the humans decide what to collect next. This approach is generally effective, but it can lead to idle time in which the spacecraft is waiting on new instructions, and it precludes the ability to capture and respond to dynamic or transient events (like dust devils or cryovolcanic plumes).",
  url: "https://www.zooniverse.org/projects/wkiri/cosmic",
  location: "online",
  organization: "PL Machine Learning and Instrument Autonomy group. ",
  org_description: "The Content-based Object Summarization to Monitor Infrequent Change (COSMIC) team is a part of the JPL Machine Learning and Instrument Autonomy group. We employ machine learning methods in support of scientific investigations and space exploration.",
  active: true
  catagory: "astrology"
)
sci_lab = Project.new(
  name: "skill-lab-science-detective",
  short_description: "ave you ever thought about what makes you special as a gamer?",
  long_description: "Skill Lab: Science Detective is a collection of minigames with a detective story theme that challenges your mind in different ways. The game enables you to test your gaming brain skills. In this process, ScienceAtHome can generate a map of your cognitive skills at different levels. We want to know your strengths and weaknesses for better understanding how they affect your performance in the other games from ScienceAtHome. Maybe having a good memory makes players rock the Alien Game? Is hand-eye coordination the basis for success in Quantum Moves? We can't wait to find out!",
  url: "https://www.scienceathome.org/games/skill-lab-science-detective/",
  location: "online",
  organization: "ScienceAtHome",
  org_description: "ScienceAtHome is a diverse team of scientists, game developers, designers and visual artists based at Aarhus University, Denmark. We create fun scientific games, with the aim of revolutionising scientific research and teaching by game-play!",
  active: true,
  catagory: "chemistry"
)
organ = Project.new(
  name: "Where are my body organs?",
  short_description: "Can you determine the location of the organs and structures within the human body?",
  long_description: "When the general population have to attend a GP appointment, Accident & Emergency, or any other healthcare visit they often describe pain or discomfort in a specific area, for instance stomach pain may be listed anywhere in the abdomen. The healthcare professional who diagnoses and treats you has studied anatomy and will know the structure(s) that are affected. However, some members of the public know a large amount of anatomy. An example would be someone who spends time in a gym, might have familiarity with, for examples some muscles. This research intends to highlight exactly how much the general public know about their own body and thus utilise it, via publication as a research article(s), to illustrate the need for sound anatomical knowledge from medical professionals and to help everyone understand where many of the common organs and structures are in the body. We also aim to highlight how anatomical knowledge is different across different groups of people, i.e is there a difference between males and females? If you have been to a visit a healthcare professional recently do you perform better, because you are more aware of structures? Does the knowledge of people change as they age?",
  url: "https://www.zooniverse.org/projects/h-spiers/where-are-my-body-organs",
  location: "online",
  organization: "American Association of Anatomists",
  org_description: "The American Association of Anatomists was founded by Joseph Leidy in Washington, D.C. in 1888 for the “advancement of anatomical science.” Today, via research, education, and professional development activities, AAA serves as the professional home for an international community of biomedical researchers and educators focusing on the structural foundation of health and disease.",
  active: true,
  catagory: "medicine"
)
aliengame = Project.new(
  name: "alien game",
  short_description: "how to solve complex problems?",
  long_description: "Computers are getting smarter and smarter every day. A computer can tell you which exit to take off the highway or what kind of books to read. The one thing computers can’t do (yet) is solve complex problems. And problem-solving is vital for business AND for building better computers!",
  url: "https://www.scienceathome.org/games/alien-game/",
  location: "browser",
  organization: "ScienceAtHome",
  org_description: "ScienceAtHome is a diverse team of scientists, game developers, designers and visual artists based at Aarhus University, Denmark. We create fun scientific games, with the aim of revolutionising scientific research and teaching by game-play!",
  active: true
  catagory: "astrology"
)

print "Creating projects"

civ_war.remote_photo_url = "https://panoptes-uploads.zooniverse.org/production/project_avatar/2d64c10f-b384-430a-82cd-c0cf6055ae06.jpeg"
civ_war.save

cosmic.remote_photo_url = "https://panoptes-uploads.zooniverse.org/production/project_avatar/e448e31c-8555-4ad3-9f67-e46616861762.png"
cosmic.save

sci_lab.remote_photo_url = "https://www.scienceathome.org/wp-content/uploads/2018/05/slsd1-1200x691.png"
sci_lab.save

organ.remote_photo_url = "https://panoptes-uploads.zooniverse.org/production/project_avatar/fe9cc866-234f-4bf9-8019-b7d4db48efa1.jpeg"
organ.save

aliengame.remote_photo_url = "https://www.scienceathome.org/wp-content/uploads/2017/02/Alien-Game-slideshow1-1200x663.jpg"
aliengame.save

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

puts "Done"
