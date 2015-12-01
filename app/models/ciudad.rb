# == Schema Information
#
# Table name: cities
#
#  id           :integer          not null, primary key
#  name         :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  country_code :string
#

class Ciudad < ActiveRecord::Base

	has_many :pacientes
	accepts_nested_attributes_for :pacientes, :reject_if => proc { |attributes| attributes.any? {|k,v| v.blank?} }




   def self.search(search)
    where("pais_codigo like '%#{search}%'  or nombre like '%#{search}%'")
  end

	
end
