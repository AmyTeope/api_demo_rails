# frozen_string_literal: true

require 'csv'

csv_text = File.read(Rails.root.join('lib/tasks', 'seeds', 'users.csv'))
csv = CSV.parse(csv_text, headers: true, encoding: 'ISO-8859-1')
csv.each do |row|
  u = User.new
  u.id = row['id']
  u.email = row['email']
  u.name = row['name']
  u.github_username = row['github_username']
  u.registered_at = row['registered_at']
  u.created_at = row['created_at']
  u.updated_at = row['updated_at']
  u.save
  puts "#{u.id} saved"
end

csv_text = File.read(Rails.root.join('lib/tasks', 'seeds', 'ratings.csv'))
csv = CSV.parse(csv_text, headers: true, encoding: 'ISO-8859-1')
csv.each do |row|
  r = Rating.new
  r.id = row['id']
  r.user_id = row['user_id']
  r.rater_id = row['rater_id']
  r.rating = row['rating']
  r.rated_at = row['rated_at']
  r.created_at = row['created_at']
  r.updated_at = row['updated_at']
  r.save
  puts "#{r.id} saved"
end

csv_text = File.read(Rails.root.join('lib/tasks', 'seeds', 'posts.csv'))
csv = CSV.parse(csv_text, headers: true, encoding: 'ISO-8859-1')
csv.each do |row|
  p = Post.new
  p.id = row['id']
  p.title = row['title']
  p.body = row['body']
  p.user_id = row['user_id']
  p.posted_at = row['posted_at']
  p.created_at = row['created_at']
  p.updated_at = row['updated_at']
  p.save
  puts "#{p.id} saved"
end

csv_text = File.read(Rails.root.join('lib/tasks', 'seeds', 'comments.csv'))
csv = CSV.parse(csv_text, headers: true, encoding: 'ISO-8859-1')
csv.each do |row|
  c = Comment.new
  c.id = row['id']
  c.user_id = row['user_id']
  c.post_id = row['post_id']
  c.message = row['message']
  c.commented_at = row['commented_at']
  c.created_at = row['created_at']
  c.updated_at = row['updated_at']
  c.save
  puts "#{c.id} saved"
end
