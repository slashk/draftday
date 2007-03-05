class AddOrankColumn < ActiveRecord::Migration
  def self.up
    add_column :players, :orank, :integer
    add_column :players, :ab, :string
  end

  def self.down
    remove_column :players, :orank
    remove_column :players, :ab
  end
end
