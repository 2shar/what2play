class Game < ActiveRecord::Base
  def short_caption
    return caption[0..250] + "..."
  end
end
