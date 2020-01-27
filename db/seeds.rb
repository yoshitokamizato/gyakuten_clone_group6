#ログインのためのユーザーseed
User.create!(email: "test@example.com", password: "password")

#movieのseed
require "csv"

CSV.foreach('db/seeds/csv/movie.csv', headers: true) do |row|
  Movie.create(
    title: row['title'],
    url: row['url']
  )
end
