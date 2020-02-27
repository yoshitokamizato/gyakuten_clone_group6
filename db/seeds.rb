#アドミンユーザー
AdminUser.create!(:email => 'admin@example.com', :password => 'password')
#一般ユーザー
User.create!(email: "test@example.com", password: "password")
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
