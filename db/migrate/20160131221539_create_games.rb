class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.string :caption
      t.text :summary
      t.string :pic

      t.timestamps null: false
    end
  end
end
