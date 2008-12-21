class Player < ActiveRecord::Base
  has_one :pick
  validates_numericality_of :yahoo_ref
  validates_presence_of :player, :pos

  # named scopes
  # player by franchise
  # player by pos
  # player by team
  named_scope :undrafted, {:joins => 'LEFT JOIN picks ON players.id=picks.player_id', :include => [:pick]}
#  named_scope :team, lambda {{:conditions => ["end_date >= ?", Date.today], :order => "start_date asc"}}
#  named_scope :franchise, lambda {{:conditions => ["end_date < ?", Date.today], :limit => 5, :order => "start_date desc"}}
#  named_scope :updated, :order => "updated_at desc", :conditions => "active", :limit => 5
#  named_scope :inactive, :conditions => {:active => false}
#  named_scope :active, :conditions => {:active => true}
#  named_scope :state, lambda  { |state| {:conditions => ["state = ?", state], :order=> "start_date asc"}}
#  named_scope :year, lambda  { |year| {:conditions => ["year(start_date) = ?", year], :order => "start_date asc"}}


end