class Airport < ActiveRecord::Base
  belongs_to :city
  has_many :clinic_histories




   def self.search(search)
    where("name like '%#{search}%'  or department like '%#{search}%'")
  end

end
