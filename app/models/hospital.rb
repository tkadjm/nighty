class Hospital < ActiveRecord::Base

  validates :name, :presence => true, :uniqueness => true

  has_many :sites, :dependent => :destroy

end
