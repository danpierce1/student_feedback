namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(name: "Example User",
                 email: "example@test.com",
                 password: "foobar",
                 password_confirmation: "foobar",
                 admin: true)
    99.times do |n|
      username  = Faker::Name.name
      email = "example-#{n+1}@test.com"
      password  = "password"
      User.create!(name: username,
                    email: email,
                   password: password,
                   password_confirmation: password
)
    end
    users = User.all(limit: 6)
    50.times do
      strengths = Faker::Lorem.sentence(5)
      weaknesses = "Weakness"  
      recommendations = "recommendations"
      rating = "1"

      users.each { |user| user.feedbacks.create!(strengths: strengths,
                    weaknesses: weaknesses,
                    recommendations: recommendations,
                    rating: rating
                    ) }
    end

  course1= Course.create!(name: "Multimedia Applications Development")
  course2= Course.create!(name: "Software Systems Development")
  course3= Course.create!(name: "Entertainment Systems")
  course4= Course.create!(name: "Applied  Computing")

  Cmodule.create!(name: "Module1")
  Cmodule.create!(name: "Module2")
  Cmodule.create!(name: "Module3")
  Cmodule.create!(name: "Module4")
  Cmodule.create!(name: "Module5")
  Cmodule.create!(name: "Module6")
  Cmodule.create!(name: "Module7")
  Cmodule.create!(name: "Module8")
  Cmodule.create!(name: "Module9")
  Cmodule.create!(name: "Module10")

  end

end