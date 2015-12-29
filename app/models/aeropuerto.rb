# == Schema Information
#
# Table name: aeropuertos
#
#  id           :integer          not null, primary key
#  nombre       :string
#  ciudad_id    :integer
#  departamento :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#


class Aeropuerto < ActiveRecord::Base
  belongs_to :ciudad
  has_many :historias_clinicas

  has_many :origen_historia_clinicas,  :primary_key => "id", :foreign_key => "a_origen", :class_name  => "HistoriaClinica"
  has_many :destino_historia_clinicas, :primary_key => "id", :foreign_key => "a_destino", :class_name => "HistoriaClinica"


validates :nombre, :presence => {:message => 'Name cannot be blank, Task not saved'}
#validates :ciudad_id, :presence => {:message => 'Name cannot be blank, Task not saved'}
#validates :departamento, :presence => {:message => 'Name cannot be blank, Task not saved'}



   def self.search(search)
    where("nombre like '%#{search}%'  or departamento like '%#{search}%'")
  end

end