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
    editors_choice:true
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


