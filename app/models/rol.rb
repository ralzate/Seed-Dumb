# == Schema Information
#
# Table name: roles
#
#  id           :integer          not null, primary key
#  name         :string
#  restrictions :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Rol < ActiveRecord::Base


  validates :nombre, :presence => { :message => " es un Campo Obligatorio"}
  validates :restricciones, :presence => { :message => " es un Campo Obligatorio"}



   def self.search(search)
    where("nombre like '%#{search}%'  or restricciones like '%#{search}%'")
  end

end
