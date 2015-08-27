class Site < ActiveRecord::Base

  validates :name,  :presence => true, :uniqueness => {:scope => :hospital_id}
  validates :phone, :presence => true, :uniqueness => true

  belongs_to :hospital
  has_many   :messages, :dependent => :destroy

end
