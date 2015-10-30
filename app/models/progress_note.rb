class ProgressNote < ActiveRecord::Base
  belongs_to :clinic_history

  def self.search(search)
    where("patient_name like '%#{search}%'  or patient_document like '%#{search}%'")
  end



end
