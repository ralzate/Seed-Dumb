# == Schema Information
#
# Table name: patients
#
#  id             :integer          not null, primary key
#  city_id        :integer
#  first_name     :string
#  second_name    :string
#  first_surname  :string
#  second_surname :string
#  email          :string
#  type_document  :integer
#  document       :string
#  days_age       :integer
#  months_age     :integer
#  years_age      :integer
#  birthdate      :date
#  gender         :integer
#  profession     :string
#  blood_type     :integer
#  nacionality    :integer
#  address        :string
#  condition      :integer
#  user_id        :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  country_code   :string
#

class Paciente < ActiveRecord::Base
  belongs_to :eps
  belongs_to :arl
  belongs_to :ciudad
  belongs_to :user
  has_many :historias_clinicas
   has_many :progress_notes

  accepts_nested_attributes_for :ciudad, :reject_if => lambda {|a| a[:nombre].blank?}


=begin
  
  validates :primer_nombre, :presence => { :message => " es un Campo Obligatorio"}
  validates :primer_apellido, :presence => { :message => " es un Campo Obligatorio"}
  validates :tipo_documento, :presence => { :message => " es un Campo Obligatorio"}
  validates :documento, :presence => { :message => " es un Campo Obligatorio"}
  validates :genero, :presence => { :message => " es un Campo Obligatorio"}
  validates :fecha_nacimiento, :presence => { :message => " es un Campo Obligatorio"}
  validates :tipo_sangre, :presence => { :message => " es un Campo Obligatorio"}
  validates :profesion, :presence => { :message => " es un Campo Obligatorio"}
  validates :direccion, :presence => { :message => " es un Campo Obligatorio"}
=end






# validates_presence_of :ciudad_id, :unless => :ciudad, :reject_if => lambda {|a| a[:nombre].present?}


   def self.search(search)
    where("primer_nombre like '%#{search}%'  or segundo_nombre like '%#{search}%' 
    or primer_apellido like '%#{search}%'  or segundo_apellido like '%#{search}%' 
    or email like '%#{search}%' or documento like '%#{search}%' or direccion like 
    '%#{search}%'")


  end
end
