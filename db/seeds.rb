require 'faker'


8.times do |x|
User.create username: Faker::Name.name,
  email: Faker::Internet.email,
  password: "password"

Post.create body: Faker::Lorem.paragraph, user_id: Faker::Number.between(1, 15), title: Faker::Book.title
end

200.times do
Answer.create post_id: Faker::Number.between(1, 15),
                  user_id: Faker::Number.between(1, 15),
                  body: 'The answer to the problem and shit'

end

300.times do |y|
Vote.create user_id: Faker::Number.between(1, 25),
voteable_id: Faker::Number.between(1, 25),
voteable_type: "Post",
vote_count: Faker::Number.between(1, 25)

Comment.create commentable_type: "Answer",
commentable_id: Faker::Number.between(1, 25),
user_id: Faker::Number.between(1, 25),
body: "This is a comment"


end

