# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#ユーザの初期データ
2.times do |i|
  User.create!(
    name: "Test Name #{i+1}",
  )
end

#支出科目マスタの初期データ
expenses = ["家賃１"  ,  "家賃２",
            "水道１"  ,  "水道２",
            "ガス１"  ,  "ガス２",
            "電気１"  ,  "電気２",
            "ネット１" ,  "ネット２",
            "食費１"  ,  "食費２",
            "消耗品１" , "消耗品２",
            "その他１" , "その他２"
]

user_id = [1,2,  #家賃
           1,2,  #水道
           1,2,  #ガス
           1,2,  #電気
           1,2,  #ネット
           1,2,  #食費
           1,2,  #消耗品
           1,2  #その他
]
16.times do |i|
  Expense.create!(
    expenses_item: expenses[i],
    user_id: user_id[i]
  )
end
