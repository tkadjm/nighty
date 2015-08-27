class Site < ActiveRecord::Base

  validates :name, :presence => true, :uniqueness => {:scope => :hospital_id}

  belongs_to :hospital
  has_many :messages
end
