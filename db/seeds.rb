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
    pic:"http://www.gamezebo.com/wp-content/uploads/2015/07/agariofeat.jpg"
  },
  {name:"Tank Trouble",
    link:"https://tanktrouble.com/",
    pic:"http://cache.hackedfreegames.com/uploads/games/pictures/998/p5TWU0D1NYV45.jpg"
    },
    {
      name:"Fortz",
      link:"http://www.gamesgames.com/game/fortz",
      pic:"http://www.gamesonly.com/games/swf43/screenshot.png"

    }
 ]
  Game.destroy_all
  editors_choice.each do |thing|
  g = Game.new
    g.name = thing[:name]
    g.link = thing[:link]
    g.pic = thing[:pic]
    g.save
  end

puts "#{Game.count} games in the database!"


 # colors = ["blue","aqua","light blue"]
 # colors.each do |color|
 # puts color
 # end


