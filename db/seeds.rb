# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


g1 = Genre.create({name: "運動系"}) #運動
g2 = Genre.create({name: "文化系"}) #文化系
g3 = Genre.create({name:"みんなでわいわい"}) #みんなでわいわい
g4 = Genre.create({name:"個人でもくもく"}) #個人でもくもく
g5 = Genre.create({name:"ボランティア"}) #ボランティア
g6 = Genre.create({name:"ダンス"}) #ダンス
g7 = Genre.create({name:"IT"}) #IT

circle = Circle.create(name: "Code for Handai",title:"課題✖テクノロジー", description: "課題✖︎テクノロジーをテーマに有志でアプリケーションなどを作ってます。",days:"012", fee:0 , members:7, location: 1, link: "['http://example.com','http://1.example.com']", views: 1000, frequency: 0)
circle.genres << g2 << g4 << g7

circle = Circle.create(name: "ダブルダッチサークルちょると",title:"阪大唯一のダブルダッチサークル！大学に入って楽しいことしたいならこれ！", description: "ダブルダッチサークルです。",days:"012345", fee:2000, members:20, location: 0, link: "['http://example.com','http://1.example.com']", views: 3, frequency: 2)
circle.genres << g1 << g3 << g6

circle = Circle.create(name: "ボランティアサークルフロンティア",title:"大学公認ボランティアサークル", description: "対人福祉ボランティアです。11個の活動があります。自分の予定にあった活動がみつかるかも！まずはBOXへ。",days:"0123456", fee:5000 , members:100, location: 0, link: "['http://example.com','http://1.example.com']", views: 3, frequency: 2)
circle.genres << g2 << g5

circle = Circle.create(name: "アイセック",title:"海外✖︎ボランティア", description: "実際に海外にいきボランティアをします。",days:"012345", fee:2000, members:100, location: 3, link: "['http://example.com','http://1.example.com']", views: 5, frequency: 2)
circle.genres << g2 << g5

