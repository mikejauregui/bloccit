require "random_data"

50.times do
  Post.create!(
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph
)
end
posts = Post.all

100.times do
  Comment.create!(
    post: posts.sample,
    body: RandomData.random_paragraph
  )
end

  Post.find_or_create_by!(
    title: "This is the newest post, assignment 30",
    body: "This is the body of the newest post from the assignment 30."
)

  Comment.find_or_create_by!(
    post_id: 101,
    body: "This is the body of the comment 101, assignment 30 final comment"
  )

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
