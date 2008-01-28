class AddClockSupportForPicks < ActiveRecord::Migration
  def self.up
    add_column :picks, :created_at, :datetime
    add_column :picks, :updated_at, :datetime
  end

  def self.down
    remove_column :picks, :created_at
    remove_column :picks, :updated_at
  end
end
