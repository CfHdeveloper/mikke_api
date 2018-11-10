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

circle = Circle.create(name: "Code for Handai",title:"課題✖テクノロジー", description: "課題✖︎テクノロジーをテーマに有志でアプリケーションなどを作ってます。",days:"012", fee:0 , members:7, location: 1,url:"https://www.google.co.jp/url?sa=i&source=imgres&cd=&cad=rja&uact=8&ved=2ahUKEwj8xKLF2MneAhXHwrwKHS_0CkIQjRx6BAgBEAU&url=http%3A%2F%2Fpiacinema2.xtwo.jp%2Fcontents%2Fgoogle%2Fflyer%2F175446.jpg&psig=AOvVaw1dorAWyuMaN-KtPjzF1TZp&ust=1541934706614733" , link: "['http://example.com','http://1.example.com']", views: 1000, frequency: 0)
circle.genres << g2 << g4 << g7

circle = Circle.create(name: "ダブルダッチサークルちょると",title:"阪大唯一のダブルダッチサークル！大学に入って楽しいことしたいならこれ！", description: "ダブルダッチサークルです。",days:"012345", fee:2000, members:20, location: 0, url:"https://www.google.co.jp/url?sa=i&source=imgres&cd=&ved=2ahUKEwiKxdP-2MneAhUBwrwKHdBwDwYQjRx6BAgBEAU&url=https%3A%2F%2Fen.wikipedia.org%2Fwiki%2FIf_Cats_Disappeared_from_the_World&psig=AOvVaw3kwGIoHTZFNsML2h3Yq7Bg&ust=1541934827418399", link: "['http://example.com','http://1.example.com']", views: 3, frequency: 2)
circle.genres << g1 << g3 << g6

circle = Circle.create(name: "ボランティアサークルフロンティア",title:"大学公認ボランティアサークル", description: "対人福祉ボランティアです。11個の活動があります。自分の予定にあった活動がみつかるかも！まずはBOXへ。",days:"0123456", fee:5000 , members:100, location: 0,url:"https://www.google.co.jp/url?sa=i&source=imgres&cd=&cad=rja&uact=8&ved=2ahUKEwityrvO2cneAhWMyrwKHftHAOUQjRx6BAgBEAU&url=http%3A%2F%2Fpiacinema2.xtwo.jp%2Fcontents%2Fgoogle%2Fflyer%2F174392.jpg&psig=AOvVaw3RALhD3MHtspevwS6CsIu_&ust=1541934994782542", link: "['http://example.com','http://1.example.com']", views: 3, frequency: 2)
circle.genres << g2 << g5

circle = Circle.create(name: "アイセック",title:"海外✖︎ボランティア", description: "実際に海外にいきボランティアをします。",days:"012345", fee:2000, members:100, location: 3,url:"https://www.google.co.jp/url?sa=i&source=imgres&cd=&cad=rja&uact=8&ved=2ahUKEwizkZvq2cneAhVGwbwKHcCyD_4QjRx6BAgBEAU&url=http%3A%2F%2Fpiacinema2.xtwo.jp%2Fcontents%2Fgoogle%2Fflyer%2F172814.jpg&psig=AOvVaw18UBsE3vyCLITinoi-j4j0&ust=1541935052964628", link: "['http://example.com','http://1.example.com']", views: 5, frequency: 2)
circle.genres << g2 << g5

circle = Circle.create(name: "クローバー",title:"野草探しませんか", description: "阪大内にある野草を調査します。山に探索にいくことも",days:"", fee:0, members:5, location: 2,url:"https://www.google.co.jp/url?sa=i&source=imgres&cd=&cad=rja&uact=8&ved=2ahUKEwirlIaI2sneAhUE9LwKHZbBABIQjRx6BAgBEAU&url=https%3A%2F%2Fwww.amazon.co.jp%2F%25E6%2598%25A0%25E7%2594%25BB%25E3%2583%2589%25E3%2583%25A9%25E3%2581%2588%25E3%2582%2582%25E3%2582%2593-%25E3%2581%25AE%25E3%2581%25B3%25E5%25A4%25AA%25E3%2581%25AE%25E6%2581%2590%25E7%25AB%259C-2006-DVD-%25E6%25B0%25B4%25E7%2594%25B0%25E3%2582%258F%25E3%2581%2595%25E3%2581%25B3%2Fdp%2FB000IMUXCA&psig=AOvVaw3_P6TKNby6fKVY48F_jH1U&ust=1541935115540545", link: "['http://example.com','http://1.example.com']", views: 2000, frequency: 0)
circle.genres << g2 << g3 

