# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(
  name: "さとう",
  email: "sato@gmail.com",
  password: "123456"
  )
User.create!(
  name: "はぎ",
  email: "hagi@gmail.com",
  password: "123456"
  )
User.create!(
  name: "こう",
  email: "kou@gmail.com",
  password: "123456"
  )

Category.create!(
  category: "ショットバー"
  )
Category.create!(
  category: "ダイニングバー"
  )
Category.create!(
  category: "ホテルバー"
  )
Category.create!(
  category: "レストランバー"
  )
Category.create!(
  category: "ホテルバー"
  )
Category.create!(
  category: "オーセンティックバー"
  )
Category.create!(
  category: "ミュージックバー"
  )
Category.create!(
  category: "スポーツバー"
  )
Category.create!(
  category: "ダーツバー"
  )

Shop.create!(
  category_id: 1,
  name: "グランシャリオ",
  postcode: "116-0013",
  address: "東京都荒川区西日暮里２",
  station: "日暮里",
  phone: "03-1234-5678",
  openhour: "平日、休日17:00~20:00",
  holiday: "日",
  budget: 1 ,
  seat: 20 ,
  explain: "静かに飲みたいを追及して",
  booking: false
  )

Shop.create!(
  category_id: 1,
  name: "グランシャリオ",
  postcode: "116-0013",
  address: "東京都港区２",
  station: "浜松町",
  phone: "03-1234-5678",
  openhour: "平日、休日17:00~20:00",
  holiday: "日",
  budget: 1 ,
  seat: 20 ,
  explain: "静かに飲みたいを追及して",
  booking: false
  )