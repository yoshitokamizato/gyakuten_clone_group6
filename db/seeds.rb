#アドミンユーザー
EMAIL = 'admin@example.com'
PASSWORD = 'password'
user = AdminUser.find_or_create_by!(email: EMAIL) do |user|
  user.password = PASSWORD
end
#一般ユーザー
EMAIL = 'test@example.com'
PASSWORD = 'password'
user = User.find_or_create_by!(email: EMAIL) do |user|
  user.password = PASSWORD
end

Question.create!(title: "質問１", content: "内容１")
Question.create!(title: "質問２", content: "内容２")
Question.create!(title: "質問３", content: "内容３")
Question.create!(title: "質問４", content: "内容４")
Question.create!(title: "質問５", content: "内容５")


#movieのseed
require "csv"

CSV.foreach('db/seeds/csv/movie.csv', headers: true) do |row|
  Movie.create(
    title: row['title'],
    url: row['url']
  )
end

CSV.foreach('db/seeds/csv/php_lecture.csv', headers: true) do |row|
  PhpLecture.create(
    title: row['title'],
    url: row['url']
  )
end

CSV.foreach('db/seeds/csv/conversation.csv', headers: true) do |row|
  Conversation.create(
    title: row['title'],
    url: row['url']
  )
end

CSV.foreach('db/seeds/csv/information.csv', headers: true) do |row|
  Information.create(
    title: row['title'],
    url: row['url']
  )
end

CSV.foreach('db/seeds/csv/video_edit.csv', headers: true) do |row|
  VideoEdit.create(url: row['url'])
end

CSV.foreach('db/seeds/csv/writing.csv', headers: true) do |row|
  Writing.create(url: row['url'])
end

puts "インポート終了"
