# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


 # t.string    "name"
 #  t.string   "caption"
 #  t.text     "summary"
 #  t.string   "pic"
 #  t.datetime "created_at", null: false
 #  t.datetime "updated_at", null: false
 #  t.string   "link"

 editors_choice = [
  {
    name:"Agar.io",
    link:"http://agar.io",
    pic:"http://www.gamezebo.com/wp-content/uploads/2015/07/agariofeat.jpg",

    caption:"This is a test. Btw this game is horrible.",
    editors_choice:true,

    tutorial: "In this massively multiplayer game, your goal is to grow as big as you can. The bigger you are, the slower you get. Avoid other people larger than you, but try to eat smaller dots. Use the mouse to move around, and press space to split. When you split, you are more vulnerable to others, but you can move faster, so its great for escape. You still control both of your halves, and eventually, they will merge back together. Also, when you use the space bar, it sends one of your two halves flying forwards. You can use this to eat someone who's smaller than you. Just make sure you're big enough to do this. Press the \"w\" key to eject mass. It takes a tiny piece of you and throws it out. It's not as useful as splitting, but you can use it to gain trust with other people, since there is no way to communicate with others. Watch out for spikes. They are randomly found around the field, and they will make you split into a bunch of tiny pieces if you are big enough."

  },
  {name:"Tank Trouble",
    link:"https://tanktrouble.com/",
    pic:"http://multihry.cz/miniatury/tank-trouble.jpg",
    caption:"Tank Trouble is a dissipointment to the entire universe.",
    editors_choice:true
    },
    {
      name:"Fortz",
      link:"http://www.gamesonly.com/multiplayer-games/fortz.html",
      pic:"http://img.crazygames.com/fortz.gif",
      caption:"I truly wish the creator never created this game.",
    editors_choice:true
    },
    {
      name:"Slither.io",
      link:"http://slither.io/",
      pic:"http://freesoftapk.com/wp-content/uploads/2016/04/Slither-gameplay-android.jpg",
      caption:"It's SLITHER DOT IO not slitherio",
    editors_choice:true
    }
 ]
  Game.destroy_all
  editors_choice.each do |thing|
  g = Game.new
    g.name = thing[:name]
    g.link = thing[:link]
    g.pic = thing[:pic]
    g.caption = thing[:caption]
    g.editors_choice = thing[:editors_choice]
    g.save
  end

puts "#{Game.count} games in the database!"


 # colors = ["blue","aqua","light blue"]
 # colors.each do |color|
 # puts color
 # end


