class Hospital < ActiveRecord::Base

  validates :name, :presence => true, :uniqueness => true

  has_many :sites, :dependent => :destroy
  has_many :messages, :through => :sites, :dependent => :destroy

end
