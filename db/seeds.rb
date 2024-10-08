# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


10.times do |skill|
  Skill.create!(
    title: "Ruby #{skill}",
    percent_utilized: 55
  )
end

5.times do |blog|
  Blog.create!(
    title: "My Blog Number #{blog}",
    body: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam laudantium ea, delectus odit sapiente consectetur laboriosam hic cupiditate itaque adipisci explicabo animi ratione consequuntur voluptatum exercitationem dolorum ex voluptatibus in!"
  )
end


9.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio Title ##{portfolio_item}",
    subtitle: "Portfolio Subtitle",
    body: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam laudantium ea, delectus odit sapiente consectetur laboriosam hic cupiditate itaque adipisci explicabo animi ratione consequuntur voluptatum exercitationem dolorum ex voluptatibus in!",
    main_image: "https://www.placehold.it/300x200",
    thumb_image: "https://www.placehold.it/300x200"
  )
end