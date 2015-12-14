# == Schema Information
#
# Table name: arles
#
#  id         :integer          not null, primary key
#  nombre     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#



class Arl < ActiveRecord::Base



	has_many :historias_clinicas
	accepts_nested_attributes_for :historias_clinicas, :reject_if => proc { |attributes| attributes.any? {|k,v| v.blank?} }


	validates :nombre, :on => :create, :presence => { :message => " es un Campo Obligatorio"}

	
  def self.search(search)
    where("nombre like '%#{search}%'")
  end
end
