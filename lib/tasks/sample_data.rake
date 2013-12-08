namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(name: "Example User",
                 email: "example@railstutorial.org",
                 password: "foobar",
                 password_confirmation: "foobar",
                 admin: true)
    99.times do |n|
      username  = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      password  = "password"
      User.create!(name: username,
                    email: email,
                   password: password,
                   password_confirmation: password)
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
                    rating: rating) }
    end
  end
end