require 'json'
serialized_projects = File.read('app/helpers/page_one_zooniverse.html')
projects = JSON.parse(serialized_projects)
url = "https://www.zooniverse.org"

projects["projects"].each do |project|
  name = project["display_name"]
  description = project["description"]
  project_url = "#{url}/#{project['slug']}"
  classifications = project["classifications_count"]
  image_url = project['avatar_src']
  new_project = Project.new(
    name: name,
    short_description: description,
    url: project_url
  )
  new_project.remote_photo_url = "https://#{image_url}"
  new_project.save!
end

# pp projects["projects"]
