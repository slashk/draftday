class User < ActiveRecord::Base
  validates_presence_of :login
  validates_presence_of :password
  validates_presence_of :email
  validates_presence_of :role
  validates_uniqueness_of :login
  validates_uniqueness_of :email
  has_one :teams
  
  def self.authenticate(login,password)
    find(:first, :conditions => ["login = ? and password = ?", login, password])
  end
  
end
