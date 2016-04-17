class Game < ActiveRecord::Base
  def short_caption
    return caption[0..250] + "..."
  end

  def spaced_name
   spacename = ""
   name.split("").each do |letter|
     spacename <<  letter
     spacename <<  " "
    end
    return spacename.upcase
  end
end
