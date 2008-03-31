class CreatePlayers < ActiveRecord::Migration
  def self.up
    create_table :players do |t|
      # t.column :name, :string
      # id int NOT NULL AUTO_INCREMENT,
      t.column :yahoo_ref,  :integer, :default => 0
      t.column :player,   :string
      t.column :team,     :string
      t.column :pos,      :string
      t.column :status,   :string
      t.column :rank,     :integer, :default => "1300"
      t.column :IP,       :real
      t.column :W,        :integer
      t.column :SV,       :integer
      t.column :K,        :integer
      t.column :ERA,      :real
      t.column :WHIP,     :real
      t.column :R,        :integer
      t.column :HR,       :integer
      t.column :RBI,      :integer
      t.column :SB,       :integer
      t.column :AVG,      :real      
    end
  end

  def self.down
    drop_table :players
  end
end
