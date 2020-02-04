#ログインのためのユーザーseed
User.create!(email: "test@example.com", password: "password")
<<<<<<< HEAD
Question.create!(title: "質問１", content: "内容１")
Question.create!(title: "質問２", content: "内容２")
Question.create!(title: "質問３", content: "内容３")
Question.create!(title: "質問４", content: "内容４")
Question.create!(title: "質問５", content: "内容５")
=======

#movieのseed
require "csv"

CSV.foreach('db/seeds/csv/movie.csv', headers: true) do |row|
  Movie.create(
    title: row['title'],
    url: row['url']
  )
end
>>>>>>> 2afff9de2b3d45d0754b2ee84b925f0ecd4d9f59
