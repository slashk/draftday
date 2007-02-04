class CreateTeams < ActiveRecord::Migration
  def self.up
    create_table :teams do |t|
      # t.column :name, :string
      t.column :full_name, :string
      t.column :short_name, :string 
      t.column :owner, :string
      t.column :team_yahoo_ref, :integer 
      t.column :draft_order, :integer, :default => '1'
    end
  end

  def self.down
    drop_table :teams
  end
end
