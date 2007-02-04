class CreatePicks < ActiveRecord::Migration
  def self.up
    create_table :picks do |t|
      # t.column :name, :string
      t.column :player_id, :integer, :null => false
      t.column :team_id, :integer, :null => false
      t.column :pick_number, :integer, :null => false      
    end
  end

  def self.down
    drop_table :picks
  end
end
