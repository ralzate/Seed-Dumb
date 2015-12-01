# == Schema Information
#
# Table nombre: epses
#
#  id         :integer          not null, primary key
#  nombre       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Eps < ActiveRecord::Base
	   has_many :pacientes


	has_many :historias_clinicas
	accepts_nested_attributes_for :historias_clinicas, :reject_if => proc { |attributes| attributes.any? {|k,v| v.blank?} }


  #validates :nombre, :presence => { :message => " es un Campo Obligatorio"}


   def self.search(search)
    search.present? ? where(["nombre LIKE ?" ,"%#{search}%"]) : all
  end

end
