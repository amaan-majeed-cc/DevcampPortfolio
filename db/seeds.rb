[ "Ruby on Rails", "Javascript", "Python" ].each do |topic|
  Topic.create!(
    title: topic
  )
end

10.times do |skill|
  Skill.create!(
    title: "Ruby #{skill}",
    percent_utilized: 55
  )
end

5.times do |blog|
  Blog.create!(
    title: "My Blog Number #{blog}",
    body: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam laudantium ea, delectus odit sapiente consectetur laboriosam hic cupiditate itaque adipisci explicabo animi ratione consequuntur voluptatum exercitationem dolorum ex voluptatibus in!",
    topic_id: Topic.last.id
  )
end


8.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio Title #{portfolio_item}",
    subtitle: "Ruby on Rails",
    body: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam laudantium ea, delectus odit sapiente consectetur laboriosam hic cupiditate itaque adipisci explicabo animi ratione consequuntur voluptatum exercitationem dolorum ex voluptatibus in!",
    main_image: "https://www.placehold.it/300x200",
    thumb_image: "https://www.placehold.it/300x200"
  )
end

Portfolio.create!(
  title: "Portfolio Title 11",
  subtitle: "Angular",
  body: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam laudantium ea, delectus odit sapiente consectetur laboriosam hic cupiditate itaque adipisci explicabo animi ratione consequuntur voluptatum exercitationem dolorum ex voluptatibus in!",
  main_image: "https://www.placehold.it/300x200",
  thumb_image: "https://www.placehold.it/300x200"
)
