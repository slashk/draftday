class AddIndices < ActiveRecord::Migration
  def self.up
    add_index :players, :player
    add_index :players, :pos
    add_index :players, :team
    add_index :players, :rank
  end

  def self.down
    remove_index :players, :player
    remove_index :players, :pos
    remove_index :players, :team
    remove_index :players, :rank
  end
end
