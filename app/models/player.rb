class Player < ActiveRecord::Base
  has_one :pick
  validates_numericality_of :yahoo_ref
  validates_presence_of :player, :pos
end
