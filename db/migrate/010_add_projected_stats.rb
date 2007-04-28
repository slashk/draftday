class AddProjectedStats < ActiveRecord::Migration
  def self.up
    add_column :players, :pHR, :integer
    add_column :players, :pR, :integer
    add_column :players, :pRBI, :integer
    add_column :players, :pSB, :integer
    add_column :players, :pBA, :float
    add_column :players, :pK, :integer
    add_column :players, :pW, :integer
    add_column :players, :pSV, :integer
    add_column :players, :pERA, :float
    add_column :players, :pWHIP, :float
  end

  def self.down
    remove_column :players, :pHR
    remove_column :players, :pR
    remove_column :players, :pRBI
    remove_column :players, :pSB
    remove_column :players, :pBA
    remove_column :players, :pK
    remove_column :players, :pW
    remove_column :players, :pSV
    remove_column :players, :pERA
    remove_column :players, :pWHIP
  end
end
