# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(
  name: "ゆうた",
  email: "yuta@gmail.com",
  password: "123456"
  )
User.create!(
  name: "けんた",
  email: "kenta@gmail.com",
  password: "123456"
  )
User.create!(
  name: "こうすけ",
  email: "kosuke@gmail.com",
  password: "123456"
  )
User.create!(
  name: "ゆうや",
  email: "yuya@gmail.com",
  password: "123456"
  )
User.create!(
  name: "ゲスト",
  email: ENV['TEST_USER'],
  password: ENV['TEST_PASSWORD']
)

AdminUser.create!(email: ENV['ADMIN_MAIL'], password: ENV['ADMIN_PASS'], password_confirmation: ENV['ADMIN_PASS']) if Rails.env.development?

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

 Owner.create!(
  name: '鈴木',
  email: 'suzuki@gmail.com',
  password: '123456'
  )

 Owner.create!(
  name: '青木',
  email: 'aoki@gmail.com',
  password: '123456'
  )
  Owner.create!(
  name: '石井',
  email: 'ishi@gmail.com',
  password: '123456'
  )
  Owner.create!(
  name: '中川',
  email: 'nakagawa@gmail.com',
  password: '123456'
  )
  Owner.create!(
  name: 'ゲスト',
  email: ENV['TEST_USER'],
  password: ENV['TEST_PASSWORD']
  )

Shop.create!(
  category_id: 1,
  owner_id: 1,
  name: "グランシャリオ",
  postcode: "116-0013",
  address: "東京都荒川区西日暮里２",
  latitude: '',
  longitude: '',
  station: "日暮里駅",
  phone: "03-1234-5678",
  holiday: 8,
  budget: 1 ,
  seat: 20 ,
  explain: "わたしたちが出した答えは「楽しい時間を過ごすため」
            高級材のカウンターも、最上質のソファーも、１杯１万円の蒸留酒も当店にはございません。
            でも、お客様に「楽しかった」「いい店だった」「また来たい」と思っていただけるような、
            そんなひと時を過ごしていただくことに賭けては、他店に一歩たりとも負けるつもりはありません。",
  booking: true,
  open_time: '19:00' ,
  close_time: '23:00'
  )

Shop.create!(
  category_id: 1,
  owner_id: 1,
  name: "シリウス",
  postcode: "116-0013",
  address: "東京都港区２",
  latitude: '',
  longitude: '',
  station: "品川駅",
  phone: "03-1234-5678",
  holiday: 8,
  budget: 3,
  seat: 84 ,
  explain: "楽しそうな会話のあるところには笑顔が溢れているので、楽しく時間を過ごしたい人達が
          　自然と集まる場所だと感じました。お店の前にたどり着いた初めての人が次もまた利用し
          　ようと思えるような場所になるように想いを込めてみました。",
  booking: true,
  open_time: '20:00',
  close_time: '25:00'
  )
Shop.create!(
  category_id: 2,
  owner_id: 2,
  name: "レガリス",
  postcode: "116-0013",
  address: "東京都港区２",
  latitude: '',
  longitude: '',
  station: "浜松町駅",
  phone: "03-1234-5678",
  holiday: 8,
  budget: 3,
  seat: 84 ,
  explain: "浜松町で世界各国のビール、ウイスキーに親しめる。スポーツを観ながら。
            ダイニングバーならではのこだわり料理をつっつきながら。ゆったりとお酒
            と料理を味わうも良し。皆で盛り上がるも良し。楽しみ方は十人十色です。",
  booking: true,
  open_time: '20:00',
  close_time: '25:00'
  )
  Shop.create!(
  category_id: 2,
  owner_id: 2,
  name: "ネオプラット",
  postcode: "121-0834",
  address: "東京都足立区",
  latitude: '',
  longitude: '',
  station: "北千住駅",
  phone: "03-1234-5678",
  holiday: 8,
  budget: 1 ,
  seat: 20 ,
  explain: "ビール派にうれしい世界のビールの飲み比べ。
            ウイスキー派にもうれしい世界のウイスキーの飲み比べ。
            スポーツフリークにもうれしいパブリックビューイング。
            みんながうれしいこだわりの美味しい料理。",
  booking: true,
  open_time: '19:00' ,
  close_time: '23:00'
  )
  Shop.create!(
  category_id: 3,
  owner_id: 1,
  name: "ファルシア",
  postcode: "162-0848",
  address: "東京都新宿区",
  latitude: '',
  longitude: '',
  station: "新宿駅",
  phone: "03-1234-5678",
  holiday: 8,
  budget: 1 ,
  seat: 20 ,
  explain: "コンセプトは店名の「エール」から取って、「応援」や「声援」
            日々頑張っている人が、お店に来て元気がもらえるようなイメージの
            コンセプトです。",
  booking: true,
  open_time: '19:00' ,
  close_time: '23:00'
  )
  Shop.create!(
  category_id: 3,
  owner_id: 1,
  name: "エスゴパ",
  postcode: "150-0042",
  address: "東京都渋谷区",
  latitude: '',
  longitude: '',
  station: "渋谷駅",
  phone: "03-1234-5678",
  holiday: 8,
  budget: 1 ,
  seat: 20 ,
  explain: "旅行に行きたい人いませんか？！ビール好きな人いませんか？！
            そんなあなたにおススメするのは、世界のビールと人が集まるこの
            お店！ここは日常から切り離された異国の地、あなたを待つのはワクワクのみ、パスポートは
            いりません！さあLet`s Travel!!",
  booking: true,
  open_time: '19:00' ,
  close_time: '23:00'
  )
  Shop.create!(
  category_id: 4,
  owner_id: 1,
  name: "レグタ",
  postcode: "116-0013",
  address: "東京都港区六本木",
  latitude: '',
  longitude: '',
  station: "六本木駅",
  phone: "03-1234-5678",
  holiday: 8,
  budget: 1 ,
  seat: 20 ,
  explain: "世界のビールで大切な人と幸せなひとときを過ごそう",
  booking: true,
  open_time: '19:00' ,
  close_time: '23:00'
  )
Shop.create!(
  category_id: 4,
  owner_id: 1,
  name: "トレアム",
  postcode: "116-0013",
  address: "東京都千代田区",
  latitude: '',
  longitude: '',
  station: "御茶ノ水駅",
  phone: "03-1234-5678",
  holiday: 8,
  budget: 1 ,
  seat: 20 ,
  explain: "仕事の後は、特別なビールを片手に、お店こだわりの美味しい料理を食べて、
              楽しい仲間と乾杯。我が家のリビングよりも素敵、快適、リラックス。ストレス発散、
              エネルギー充電。",
  booking: true,
  open_time: '19:00' ,
  close_time: '23:00'
  )
  Shop.create!(
  category_id: 5,
  owner_id: 1,
  name: "ブライト・ナハト",
  postcode: "116-0013",
  address: "東京都大田区",
  latitude: '',
  longitude: '',
  station: "大井町駅",
  phone: "03-1234-5678",
  holiday: 8,
  budget: 1 ,
  seat: 20 ,
  explain: "コンセプト 「宗右衛門ビールバー」は、 忙しい日々でも、
            短時間で海外旅行をした満足感が味わえるお店です。",
  booking: true,
  open_time: '19:00' ,
  close_time: '23:00'
  )
  Shop.create!(
  category_id: 5,
  owner_id: 1,
  name: "コークブラック",
  postcode: "116-0013",
  address: "東京都台東区",
  latitude: '',
  longitude: '',
  station: "上野駅",
  phone: "03-1234-5678",
  holiday: 8,
  budget: 1 ,
  seat: 20 ,
  explain: "愛といっても様々なカタチがありますが、足を運んで下さった方に「お出迎えからお帰りまで」を愛で包めるお店作りを目指してます。
            運ばれてくる料理や飲み物に愛を込めて
            あなたを見つめる眼差し笑顔に愛を込めて
            一緒にいる空間の中で、存分に召し上がっていただけたらと思います。",
  booking: true,
  open_time: '19:00' ,
  close_time: '23:00'
  )
  Shop.create!(
  category_id: 6,
  owner_id: 1,
  name: "シャーロット",
  postcode: "116-0013",
  address: "埼玉県",
  latitude: '',
  longitude: '',
  station: "大宮駅",
  phone: "0480-1234-5678",
  holiday: 8,
  budget: 1 ,
  seat: 20 ,
  explain: "すべてにおいてハイクオリティを誇るバー。本格的なカクテル、スイーツやオムライスなど、
            お店のキッチンで料理した出来たての美味しさを、表情豊かにご提供いたします。妥協を許さない、
            本物志向のあなたを満足させる、お店を目指して。",
  booking: true,
  open_time: '19:00' ,
  close_time: '23:00'
  )
  Shop.create!(
  category_id: 6,
  owner_id: 1,
  name: "クリケット",
  postcode: "116-0013",
  address: "東京都江戸川区",
  latitude: '',
  longitude: '',
  station: "葛西駅",
  phone: "03-1234-5678",
  holiday: 8,
  budget: 1 ,
  seat: 20 ,
  explain: "非日常を日常に。日常を非日常に。",
  booking: true,
  open_time: '19:00' ,
  close_time: '23:00'
  )
  Shop.create!(
  category_id: 7,
  owner_id: 1,
  name: "ソニックショット",
  postcode: "116-0013",
  address: "東京都千代田区",
  latitude: '',
  longitude: '',
  station: "有楽町駅",
  phone: "03-1234-5678",
  holiday: 8,
  budget: 1 ,
  seat: 20 ,
  explain: "ビルに隠れている癒し空間",
  booking: true,
  open_time: '19:00' ,
  close_time: '23:00'
  )
  Shop.create!(
  category_id: 7,
  owner_id: 1,
  name: "シャングリア",
  postcode: "116-0013",
  address: "東京都墨田区",
  latitude: '',
  longitude: '',
  station: "押上駅",
  phone: "03-1234-5678",
  holiday: 8,
  budget: 1 ,
  seat: 20 ,
  explain: "癒しのひと時を",
  booking: true,
  open_time: '19:00' ,
  close_time: '23:00'
  )
  Shop.create!(
  category_id: 8,
  owner_id: 1,
  name: "アウル",
  postcode: "116-0013",
  address: "東京都足立区",
  latitude: '',
  longitude: '',
  station: "青砥駅",
  phone: "03-1234-5678",
  holiday: 8,
  budget: 1 ,
  seat: 20 ,
  explain: "店内は異国を思わせる雰囲気が漂っており、人種や年代、職業に関係なく色んな会話が広がっている。
            それはこの店の看板とも言える世界のビールとこだわりの料理が繋ぐ空間だ。
            時にはスポーツ観戦をしたり、ダーツなどを楽しんだり、ゆっくりお酒を飲んだり、会話に花を咲かせたりと
            特にシーズンには、スポーツ観戦で店内が一体となり、とにかく盛り上がる。",
  booking: true,
  open_time: '19:00' ,
  close_time: '23:00'
  )
  Shop.create!(
  category_id: 8,
  owner_id: 1,
  name: "ゴルブラ",
  postcode: "116-0013",
  address: "東京都豊島区",
  latitude: '',
  longitude: '',
  station: "池袋駅",
  phone: "03-1234-5678",
  holiday: 8,
  budget: 1 ,
  seat: 20 ,
  explain: "退屈からの解放、エールで世界のビールを
            疲れからの解放、エールで仲間と発散を
            シガラミからの解放、エールで外国人と会話を
            空腹からの解放、エールで最上の料理を
            楽しさへの解放、エールに来店を。",
  booking: true,
  open_time: '19:00' ,
  close_time: '23:00'
  )
Review.create!(
  user_id: 1,
  shop_id: 1,
  title: "静かで落ち着きのあるバー",
  post: "マスターがとてもいい人でまた行きたくなるような雰囲気でした",
  star: 4.5,
  image: File.open('./app/assets/images/shotbar1.jpg')
)
Review.create!(
  user_id: 2,
  shop_id: 2,
  title: "ビールがおいしい",
  post: "ビールが自家製でとても甘かったです",
  star: 3.5,
  image: File.open('./app/assets/images/shotbar1.jpg')
)
Review.create!(
  user_id: 3,
  shop_id: 3,
  title: "ワインがおいしい",
  post: "ワインが自家製でとても甘かったです",
  star: 5.0,
  image: File.open('./app/assets/images/shotbar1.jpg')
)
Review.create!(
  user_id: 4,
  shop_id: 4,
  title: "カジュアルな雰囲気",
  post: "一瞬バーにいることを忘れさせてくれました",
  star: 3.0,
  image: File.open('./app/assets/images/shotbar1.jpg')
)
Review.create!(
  user_id: 5,
  shop_id: 5,
  title: "ハイボールがおいしい",
  post: "ハイボールがとてもおいしかったです",
  star: 3.0,
  image: File.open('./app/assets/images/shotbar1.jpg')
)
Review.create!(
  user_id: 5,
  shop_id: 6,
  title: "ハイボールがおいしい",
  post: "ハイボールがとてもおいしかったです",
  star: 4.0,
  image: File.open('./app/assets/images/shotbar1.jpg')
)
Review.create!(
  user_id: 5,
  shop_id: 7,
  title: "和やかな雰囲気",
  post: "他のお客様と仲良くなれる雰囲気です",
  star: 3.5,
  image: File.open('./app/assets/images/shotbar1.jpg')
)
Review.create!(
  user_id: 5,
  shop_id: 8,
  title: "とても楽しい",
  post: "話をとても楽しめます。",
  star: 3.5,
  image: File.open('./app/assets/images/shotbar1.jpg')
)
Review.create!(
  user_id: 1,
  shop_id: 9,
  title: "とても楽しい",
  post: "話をとても楽しめます。",
  star: 3.5,
  image: File.open('./app/assets/images/shotbar1.jpg')
)
Review.create!(
  user_id: 1,
  shop_id: 10,
  title: "とても楽しい",
  post: "話をとても楽しめます。",
  star: 3.5,
  image: File.open('./app/assets/images/shotbar1.jpg')
)
Review.create!(
  user_id: 2,
  shop_id: 11,
  title: "とても楽しい",
  post: "話をとても楽しめます。",
  star: 3.5,
  image: File.open('./app/assets/images/shotbar1.jpg')
)
Review.create!(
  user_id: 2,
  shop_id: 12,
  title: "とても楽しい",
  post: "話をとても楽しめます。",
  star: 3.5,
  image: File.open('./app/assets/images/shotbar1.jpg')
)
Review.create!(
  user_id: 3,
  shop_id: 13,
  title: "とても楽しい",
  post: "話をとても楽しめます。",
  star: 3.5,
  image: File.open('./app/assets/images/shotbar1.jpg')
)
Review.create!(
  user_id: 3,
  shop_id: 14,
  title: "とても楽しい",
  post: "話をとても楽しめます。",
  star: 3.5,
  image: File.open('./app/assets/images/shotbar1.jpg')
)
Review.create!(
  user_id: 4,
  shop_id: 15,
  title: "とても楽しい",
  post: "話をとても楽しめます。",
  star: 3.5,
  image: File.open('./app/assets/images/shotbar1.jpg')
)
Review.create!(
  user_id: 5,
  shop_id: 16,
  title: "とても楽しい",
  post: "話をとても楽しめます。",
  star: 3.5,
  image: File.open('./app/assets/images/shotbar1.jpg')
)
ShopPicture.create!(
  shop_id: 1,
  image: File.open('./app/assets/images/shop-image/shotbar2.jpg')
  )
ShopPicture.create!(
  shop_id: 1,
  image: File.open('./app/assets/images/shop-image/shotbar3.jpg')
  )
ShopPicture.create!(
  shop_id: 1,
  image: File.open('./app/assets/images/shop-image/shotbar4.jpg')
  )
ShopPicture.create!(
  shop_id: 2,
  image: File.open('./app/assets/images/shop-image/shotbar5.jpg')
  )
ShopPicture.create!(
  shop_id: 2,
  image: File.open('./app/assets/images/shop-image/shotbar6.jpg')
)
ShopPicture.create!(
  shop_id: 2,
  image: File.open('./app/assets/images/shop-image/alchol1.jpg')
)
ShopPicture.create!(
  shop_id: 3,
  image: File.open('./app/assets/images/shop-image/diningbar1.jpg')
)
ShopPicture.create!(
  shop_id: 3,
  image: File.open('./app/assets/images/shop-image/diningbar2.jpg')
)
ShopPicture.create!(
  shop_id: 3,
  image: File.open('./app/assets/images/shop-image/diningbar3.jpg')
)
ShopPicture.create!(
  shop_id: 4,
  image: File.open('./app/assets/images/shop-image/shotbar7.jpg')
)
ShopPicture.create!(
  shop_id: 4,
  image: File.open('./app/assets/images/shop-image/diningbar4.jpg')
)
ShopPicture.create!(
  shop_id: 4,
  image: File.open('./app/assets/images/shop-image/diningbar5.jpg')
)
ShopPicture.create!(
  shop_id: 5,
  image: File.open('./app/assets/images/shop-image/hotelbar1.jpg')
)
ShopPicture.create!(
  shop_id: 5,
  image: File.open('./app/assets/images/shop-image/hotelbar2.jpg')
)
ShopPicture.create!(
  shop_id: 5,
  image: File.open('./app/assets/images/shop-image/hotelbar3.jpg')
)
ShopPicture.create!(
  shop_id: 6,
  image: File.open('./app/assets/images/shop-image/hotelbar4.jpg')
)
ShopPicture.create!(
  shop_id: 6,
  image: File.open('./app/assets/images/shop-image/alchol3.jpg')
)
ShopPicture.create!(
  shop_id: 6,
  image: File.open('./app/assets/images/shop-image/alchol4.jpg')
)
ShopPicture.create!(
  shop_id: 7,
  image: File.open('./app/assets/images/shop-image/restaurant1.jpg')
)
ShopPicture.create!(
  shop_id: 7,
  image: File.open('./app/assets/images/shop-image/alchol3.jpg')
)
ShopPicture.create!(
  shop_id: 7,
  image: File.open('./app/assets/images/shop-image/alchol4.jpg')
)
ShopPicture.create!(
  shop_id: 8,
  image: File.open('./app/assets/images/shop-image/restaurant2.jpg')
)
ShopPicture.create!(
  shop_id: 8,
  image: File.open('./app/assets/images/shop-image/alchol1.jpg')
)
ShopPicture.create!(
  shop_id: 8,
  image: File.open('./app/assets/images/shop-image/alchol2.jpg')
)
ShopPicture.create!(
  shop_id: 9,
  image: File.open('./app/assets/images/shop-image/othanthick1.jpg')
)
ShopPicture.create!(
  shop_id: 9,
  image: File.open('./app/assets/images/shop-image/alchol1.jpg')
)
ShopPicture.create!(
  shop_id: 9,
  image: File.open('./app/assets/images/shop-image/alchol2.jpg')
)
ShopPicture.create!(
  shop_id: 10,
  image: File.open('./app/assets/images/shop-image/othanthick2.jpg')
)
ShopPicture.create!(
  shop_id: 10,
  image: File.open('./app/assets/images/shop-image/alchol3.jpg')
)
ShopPicture.create!(
  shop_id: 10,
  image: File.open('./app/assets/images/shop-image/alchol4.jpg')
)
ShopPicture.create!(
  shop_id: 11,
  image: File.open('./app/assets/images/shop-image/music1.jpg')
)
ShopPicture.create!(
  shop_id: 11,
  image: File.open('./app/assets/images/shop-image/alchol3.jpg')
)
ShopPicture.create!(
  shop_id: 11,
  image: File.open('./app/assets/images/shop-image/alchol4.jpg')
)
ShopPicture.create!(
  shop_id: 12,
  image: File.open('./app/assets/images/shop-image/music2.jpg')
)
ShopPicture.create!(
  shop_id: 12,
  image: File.open('./app/assets/images/shop-image/alchol1.jpg')
)
ShopPicture.create!(
  shop_id: 12,
  image: File.open('./app/assets/images/shop-image/alchol2.jpg')
)
ShopPicture.create!(
  shop_id: 13,
  image: File.open('./app/assets/images/shop-image/sports1.jpg')
)
ShopPicture.create!(
  shop_id: 13,
  image: File.open('./app/assets/images/shop-image/alchol1.jpg')
)
ShopPicture.create!(
  shop_id: 13,
  image: File.open('./app/assets/images/shop-image/alchol2.jpg')
)
ShopPicture.create!(
  shop_id: 14,
  image: File.open('./app/assets/images/shop-image/sports2.jpg')
)
ShopPicture.create!(
  shop_id: 14,
  image: File.open('./app/assets/images/shop-image/alchol3.jpg')
)
ShopPicture.create!(
  shop_id: 14,
  image: File.open('./app/assets/images/shop-image/alchol4.jpg')
)
ShopPicture.create!(
  shop_id: 15,
  image: File.open('./app/assets/images/shop-image/darts1.jpg')
)
ShopPicture.create!(
  shop_id: 15,
  image: File.open('./app/assets/images/shop-image/alchol1.jpg')
)
ShopPicture.create!(
  shop_id: 15,
  image: File.open('./app/assets/images/shop-image/alchol2.jpg')
)
ShopPicture.create!(
  shop_id: 16,
  image: File.open('./app/assets/images/shop-image/darts2.jpg')
)
ShopPicture.create!(
  shop_id: 16,
  image: File.open('./app/assets/images/shop-image/alchol3.jpg')
)
ShopPicture.create!(
  shop_id: 16,
  image: File.open('./app/assets/images/shop-image/alchol4.jpg')
)