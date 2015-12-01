# == Schema Information
#
# Table name: airports
#
#  id         :integer          not null, primary key
#  name       :string
#  city_id    :integer
#  department :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Aeropuerto < ActiveRecord::Base
  belongs_to :ciudad
  has_many :historias_clinicas

validates :nombre, :presence => {:message => 'Name cannot be blank, Task not saved'}
#validates :ciudad_id, :presence => {:message => 'Name cannot be blank, Task not saved'}
#validates :departamento, :presence => {:message => 'Name cannot be blank, Task not saved'}



   def self.search(search)
    where("nombre like '%#{search}%'  or departamento like '%#{search}%'")
  end

end
