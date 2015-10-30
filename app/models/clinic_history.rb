class ClinicHistory < ActiveRecord::Base
  belongs_to :eps
  belongs_to :arl
  belongs_to :city
  belongs_to :user
  belongs_to :user
  belongs_to :airport
  belongs_to :patient

  def self.search(search)
    where("origin like '%#{search}%'  or company like '%#{search}%'")
  end

  
end
