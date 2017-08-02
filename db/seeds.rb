# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
House.destroy_all
Character.destroy_all

stark = House.create  ({name: "Stark", animal: "Wolf", img_url:'https://s-media-cache-ak0.pinimg.com/736x/17/aa/fa/17aafa42a2756581f26b46c93faebfc9--t-shirt-game-of-thrones-got-game-of-thrones.jpg' })
targaryen = House.create  ({name: "Targaryen", animal: "Dragon", img_url:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOYAJYdt3WR69Dzrvkm-S1rpkp4Kyk3bXtxhEw_Faycj5Dvr0z' })
lannister = House.create  ({name: "Lannister", animal: "Lion", img_url: 'https://ak3.scstatic.net/1/cdn2-cont12.sweetcouch.com/148365339333188445-house-lannister-wallart-print.png'})

jon = Character.create  ({name: "Jon Snow", weapon: "an army", img_url: 'https://pbs.twimg.com/profile_images/743138182607175680/ZJzktgBk_400x400.jpg' , house: stark })
ned = Character.create  ({name: "Ned Stark", weapon: "loyalty", img_url:'https://upload.wikimedia.org/wikipedia/en/5/52/Ned_Stark-Sean_Bean.jpg'  , house: stark })
arya = Character.create ({name: "Arya Stark", weapon: "subterfuge", img_url: 'https://upload.wikimedia.org/wikipedia/en/3/39/Arya_Stark-Maisie_Williams.jpg' , house: stark })
daenarys = Character.create ({name: "Daenarys Targaryen", weapon: "DRAGONS", img_url: 'https://vignette3.wikia.nocookie.net/gameofthrones/images/8/88/Daenerys_Targaryen_S7_Promo_Image.PNG/revision/latest/scale-to-width-down/320?cb=20170420191154'  , house: targaryen })
viserys = Character.create ({name: "Viserys Targaryen", weapon: "gold", img_url:'https://upload.wikimedia.org/wikipedia/en/thumb/8/82/Viserys_Targaryen-Harry_Lloyd.jpg/220px-Viserys_Targaryen-Harry_Lloyd.jpg'  , house: targaryen })
jaime = Character.create ({name: "Jaime Lannister", weapon: "a one handed sword", img_url:'https://pbs.twimg.com/profile_images/853288399293120514/kQU6rncY.jpg'  , house: lannister})
cersei = Character.create ({name: "Cersei Lannister", weapon: "sabotage", img_url:'https://vignette2.wikia.nocookie.net/gameofthrones/images/f/ff/Cersei_2x01b.jpg/revision/latest?cb=20120729114134'  , house: lannister})
tyrion = Character.create ({name: "Tyrion Lannister", weapon: "sarcasm", img_url:'https://upload.wikimedia.org/wikipedia/en/5/50/Tyrion_Lannister-Peter_Dinklage.jpg'  , house: lannister})
