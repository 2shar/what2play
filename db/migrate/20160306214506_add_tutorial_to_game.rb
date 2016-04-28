class AddTutorialToGame < ActiveRecord::Migration
  def change
  	add_column :games,:videolink,:string
  	add_column :games,:tutorial,:text
  end
end
