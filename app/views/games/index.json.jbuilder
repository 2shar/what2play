json.array!(@games) do |game|
  json.extract! game, :id, :name, :caption, :summary, :pic
  json.url game_url(game, format: :json)
end
