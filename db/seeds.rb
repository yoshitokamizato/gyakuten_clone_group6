#アドミンユーザー
AdminUser.create!(:email => 'admin@example.com', :password => 'password')
#一般ユーザー
User.create!(email: "test@example.com", password: "password")
Question.create!(title: "質問１", content: "内容１", question_id: 1)
Question.create!(title: "質問２", content: "内容２", question_id: 2)
Question.create!(title: "質問３", content: "内容３", question_id: 3)
Question.create!(title: "質問４", content: "内容４", question_id: 4)
Question.create!(title: "質問５", content: "内容５", question_id: 5)


#movieのseed
require "csv"

CSV.foreach('db/seeds/csv/movie.csv', headers: true) do |row|
  Movie.create(
    title: row['title'],
    url: row['url']
  )
end
