class HistoriaClinica < ActiveRecord::Base




  belongs_to :arl
  belongs_to :eps
  belongs_to :user
  belongs_to :paciente
  belongs_to :aeropuerto


  accepts_nested_attributes_for :arl
  accepts_nested_attributes_for :eps

  has_many :diagnosticos
  has_many :procedimientos
  has_many :notas_progreso

  accepts_nested_attributes_for :diagnosticos, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :procedimientos, reject_if: :all_blank, allow_destroy: true


  cattr_accessor :form_steps do
    %w(a_historia_clinica b_antecedentes c_revision_sistemas d_examen_fisico e_impresion_diagnostica)
  end

  attr_accessor :form_step












  def required_for_step?(step)
    return true if form_step.nil?
    return true if self.form_steps.index(step.to_s) <= self.form_steps.index(form_step)
  end
   def self.search(search)
    where("primer_nombre like '%#{search}%'  or segundo_nombre like '%#{search}%' 
    or primer_apellido like '%#{search}%'  or segundo_apellido like '%#{search}%' 
    or email like '%#{search}%' or documento like '%#{search}%' or direccion like 
    '%#{search}%'")
  end


   before_save do
      self.d_alteracion.gsub!(/[\[\]\"]/, "") if attribute_present?("d_alteracion")
      self.d_otros_signos.gsub!(/[\[\]\"]/, "") if attribute_present?("d_otros_signos")
   end


end
