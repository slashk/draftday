class Pick < ActiveRecord::Base
  belongs_to :player
  belongs_to :team
  #validates_uniqueness_of :player_id, :on => :create, :message => "has already been drafted"
  validates_uniqueness_of :pick_number, :on => :create, :message => "was already been taken"
  # took out validations so that we can prepopulte the table with draft picks and teams w/out actual draftees
  #validates_numericality_of :player_id
  #validates_numericality_of :team_id
end