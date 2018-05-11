Term.destroy_all

10.times do |i|
  Term.create!(name: Faker::Hacker.adjective, blurb: Faker::Hipster.sentence(10, true), explanation: Faker::Hipster.paragraphs(2))

end

p "Created #{Term.count} terms."
User.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?