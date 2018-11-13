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

circle = Circle.create(name: "Code for Handai",title:"課題✖テクノロジー", description: "課題✖︎テクノロジーをテーマに有志でアプリケーションなどを作ってます。",days:"012", fee:0 , members:7, location: 1,url:"https://webukatu.com/wordpress/wp-content/uploads/2018/06/e95efe85cf997b40cc53ccbf99a40479.jpg" , link: "['http://example.com','http://1.example.com']", views: 1000, frequency: 0)
circle.genres << g2 << g4 << g7

circle = Circle.create(name: "ダブルダッチサークルちょると",title:"阪大唯一のダブルダッチサークル！大学に入って楽しいことしたいならこれ！", description: "ダブルダッチサークルです。",days:"012345", fee:2000, members:20, location: 0, url:"http://www.koei-corp.jp/images/agent2009/double_dutch_show/dds_asgrm.jpg", link: "['http://example.com','http://1.example.com']", views: 3, frequency: 2)
circle.genres << g1 << g3 << g6

circle = Circle.create(name: "ボランティアサークルフロンティア",title:"大学公認ボランティアサークル", description: "対人福祉ボランティアです。11個の活動があります。自分の予定にあった活動がみつかるかも！まずはBOXへ。",days:"0123456", fee:5000 , members:100, location: 0,url:"http://archive.utsunomiya-hanabi.jp/2010/outline/images/img-volunteer01.jpg", link: "['http://example.com','http://1.example.com']", views: 3, frequency: 2)
circle.genres << g2 << g5

circle = Circle.create(name: "アイセック",title:"海外✖︎ボランティア", description: "実際に海外にいきボランティアをします。",days:"012345", fee:2000, members:100, location: 3,url:"https://s3-ap-northeast-1.amazonaws.com/files.gakucir.com/circle_pic/circle_3527_URR0jFPxXxw13VF_main.jpg", link: "['http://example.com','http://1.example.com']", views: 5, frequency: 2)
circle.genres << g2 << g5

circle = Circle.create(name: "クローバー",title:"野草探しませんか", description: "阪大内にある野草を調査します。山に探索にいくことも",days:"", fee:0, members:5, location: 2,url:"http://asset.s-bs.jp/Suumo/78/d9/2426230/2426230_e77a0978d9_eyecatch.jpg", link: "['http://example.com','http://1.example.com']", views: 2000, frequency: 0)
circle.genres << g2 << g3 

