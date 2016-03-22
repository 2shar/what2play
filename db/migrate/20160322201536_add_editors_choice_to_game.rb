class AddEditorsChoiceToGame < ActiveRecord::Migration
  def change
    add_column :games, :editors_choice, :boolean
  end
end
