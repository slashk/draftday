class ProjectedStats < ActiveRecord::Migration
  def self.up
    add_column :players, :prank, :integer
    add_column :players, :depth, :integer
    add_column :players, :note, :string
  end

  def self.down
    remove_column :players, :prank
    remove_column :players, :depth
    remove_column :players, :note
  end
end
