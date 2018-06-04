Term.destroy_all
User.destroy_all
Comment.destroy_all
AdminUser.destroy_all

@name = Faker::Name.last_name
User.create!(username: @name, email: "#{@name}@foo.com", password: "abc123", password_confirmation: "abc123")

AdminUser.create!(email: "admin@gmail.com", password: "abc123", password_confirmation: "abc123")


15.times do |i|
  @id = User.last.id
  Term.create!(name: Faker::Hacker.adjective, blurb: Faker::Hipster.sentence(10, true), explanation: Faker::Hipster.sentence(500))

  3.times do |i|
    @term_id = Term.last.id
    Comment.create!(user_id: @id, term_id: @term_id, body: Faker::Hipster.sentence(10))
  end

end

p "Created #{Term.count} terms."
p "Created #{User.count} users."
p "Create #{Comment.count} comments."


# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
