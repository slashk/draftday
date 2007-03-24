class Team < ActiveRecord::Base
  has_many :pick
  belongs_to :user
  validates_uniqueness_of :team_yahoo_ref, :on => :create, :message => "must be unique"
  validates_uniqueness_of :draft_order, :on => :create, :message => "must be unique"
  validates_numericality_of :team_yahoo_ref
  validates_numericality_of :draft_order
end
