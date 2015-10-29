class ClinicHistory < ActiveRecord::Base
  belongs_to :user
  belongs_to :patient
  belongs_to :airport

  def self.search(search)
    where("origin like '%#{search}%'  or company like '%#{search}%'")
  end

end
