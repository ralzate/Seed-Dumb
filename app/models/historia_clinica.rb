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



  validates :patologicos_true, :unless =>  :patologicos_false, :presence => { :message => " Debe Seleccionar opcion de Neonatales" }, if: -> { required_for_step?(:b_antecedentes) }
  validates :patologicos_false, :unless =>  :patologicos_true, :presence => { :message => " Debe Seleccionar opcion de Neonatales" }, if: -> { required_for_step?(:b_antecedentes) }

  validates :neunatales_true, :unless => :neunatales_false?, :presence => { :message => " Debe Seleccionar opcion de Neonatales" }, if: -> { required_for_step?(:b_antecedentes) }
  validates :neunatales_false, :unless => :neunatales_true?, :presence => { :message => " Debe Seleccionar opcion de Neonatales" }, if: -> { required_for_step?(:b_antecedentes) }

  validates :quirurgicos_true, :unless => :quirurgicos_false?, :presence => { :message => " Debe Seleccionar opcion de Quirúrgicos" }, if: -> { required_for_step?(:b_antecedentes) }
  validates :quirurgicos_false, :unless => :quirurgicos_true?, :presence => { :message => " Debe Seleccionar opcion de Quirúrgicos" }, if: -> { required_for_step?(:b_antecedentes) }

  validates :farmacologicos_true, :unless => :farmacologicos_false?, :presence => { :message => " Debe Seleccionar opcion de Quirúrgicos" }, if: -> { required_for_step?(:b_antecedentes) }
  validates :farmacologicos_false, :unless => :farmacologicos_true?, :presence => { :message => " Debe Seleccionar opcion de Quirúrgicos" }, if: -> { required_for_step?(:b_antecedentes) }

  validates :alergicos_true, :unless => :alergicos_false?, :presence => { :message => " Debe Seleccionar opcion de Quirúrgicos" }, if: -> { required_for_step?(:b_antecedentes) }
  validates :alergicos_false, :unless => :alergicos_true?, :presence => { :message => " Debe Seleccionar opcion de Quirúrgicos" }, if: -> { required_for_step?(:b_antecedentes) }

  validates :toxicos_true, :unless => :toxicos_false?, :presence => { :message => " Debe Seleccionar opcion de Quirúrgicos" }, if: -> { required_for_step?(:b_antecedentes) }
  validates :toxicos_false, :unless => :toxicos_true?, :presence => { :message => " Debe Seleccionar opcion de Quirúrgicos" }, if: -> { required_for_step?(:b_antecedentes) }

  validates :traumaticos_true, :unless => :traumaticos_false?, :presence => { :message => " Debe Seleccionar opcion de Quirúrgicos" }, if: -> { required_for_step?(:b_antecedentes) }
  validates :traumaticos_false, :unless => :traumaticos_true?, :presence => { :message => " Debe Seleccionar opcion de Quirúrgicos" }, if: -> { required_for_step?(:b_antecedentes) }

  validates :hospitables_true, :unless => :hospitables_false?, :presence => { :message => " Debe Seleccionar opcion de Quirúrgicos" }, if: -> { required_for_step?(:b_antecedentes) }
  validates :hospitables_false, :unless => :hospitables_true?, :presence => { :message => " Debe Seleccionar opcion de Quirúrgicos" }, if: -> { required_for_step?(:b_antecedentes) }

  validates :atep_laboral_true, :unless => :atep_laboral_false?, :presence => { :message => " Debe Seleccionar opcion de Quirúrgicos" }, if: -> { required_for_step?(:b_antecedentes) }
  validates :atep_laboral_false, :unless => :atep_laboral_true?, :presence => { :message => " Debe Seleccionar opcion de Quirúrgicos" }, if: -> { required_for_step?(:b_antecedentes) }

  validates :familiar_true, :unless => :familiar_false?, :presence => { :message => " Debe Seleccionar opcion de Quirúrgicos" }, if: -> { required_for_step?(:b_antecedentes) }
  validates :familiar_false, :unless => :familiar_true?, :presence => { :message => " Debe Seleccionar opcion de Quirúrgicos" }, if: -> { required_for_step?(:b_antecedentes) }

  validates :inmunologicos_true, :unless => :inmunologicos_false?, :presence => { :message => " Debe Seleccionar opcion de Quirúrgicos" }, if: -> { required_for_step?(:b_antecedentes) }
  validates :inmunologicos_false, :unless => :inmunologicos_true?, :presence => { :message => " Debe Seleccionar opcion de Quirúrgicos" }, if: -> { required_for_step?(:b_antecedentes) }

  validates :asociado_viajes_de_vuelo_true, :unless => :asociado_viajes_de_vuelo_false?, :presence => { :message => " Debe Seleccionar opcion de Quirúrgicos" }, if: -> { required_for_step?(:b_antecedentes) }
  validates :asociado_viajes_de_vuelo_false, :unless => :asociado_viajes_de_vuelo_true?, :presence => { :message => " Debe Seleccionar opcion de Quirúrgicos" }, if: -> { required_for_step?(:b_antecedentes) }







  validates :cardiovascular_true, :unless =>  :cardiovascular_false?, :presence => { :message => " Debe Seleccionar opcion de Neonatales" }, if: -> { required_for_step?(:c_revision_sistemas) }
  validates :cardiovascular_false, :unless =>  :cardiovascular_true?, :presence => { :message => " Debe Seleccionar opcion de Neonatales" }, if: -> { required_for_step?(:c_revision_sistemas) }

  validates :respiratory_true, :unless => :respiratory_false?, :presence => { :message => " Debe Seleccionar opcion de Neonatales" }, if: -> { required_for_step?(:c_revision_sistemas) }
  validates :respiratory_false, :unless => :respiratory_true?, :presence => { :message => " Debe Seleccionar opcion de Neonatales" }, if: -> { required_for_step?(:c_revision_sistemas) }

  validates :abdominal_true, :unless => :abdominal_false?, :presence => { :message => " Debe Seleccionar opcion de Quirúrgicos" }, if: -> { required_for_step?(:c_revision_sistemas) }
  validates :abdominal_false, :unless => :abdominal_true?, :presence => { :message => " Debe Seleccionar opcion de Quirúrgicos" }, if: -> { required_for_step?(:c_revision_sistemas) }

  validates :genito_urinario_true, :unless => :genito_urinario_false?, :presence => { :message => " Debe Seleccionar opcion de Quirúrgicos" }, if: -> { required_for_step?(:c_revision_sistemas) }
  validates :genito_urinario_false, :unless => :genito_urinario_true?, :presence => { :message => " Debe Seleccionar opcion de Quirúrgicos" }, if: -> { required_for_step?(:c_revision_sistemas) }

  validates :neurological_true, :unless => :neurological_false?, :presence => { :message => " Debe Seleccionar opcion de Quirúrgicos" }, if: -> { required_for_step?(:c_revision_sistemas) }
  validates :neurological_false, :unless => :neurological_true?, :presence => { :message => " Debe Seleccionar opcion de Quirúrgicos" }, if: -> { required_for_step?(:c_revision_sistemas) }

  validates :mental_true, :unless => :mental_false?, :presence => { :message => " Debe Seleccionar opcion de Quirúrgicos" }, if: -> { required_for_step?(:c_revision_sistemas) }
  validates :mental_false, :unless => :mental_true?, :presence => { :message => " Debe Seleccionar opcion de Quirúrgicos" }, if: -> { required_for_step?(:c_revision_sistemas) }

  validates :sense_organ_true, :unless => :sense_organ_false?, :presence => { :message => " Debe Seleccionar opcion de Quirúrgicos" }, if: -> { required_for_step?(:c_revision_sistemas) }
  validates :sense_organ_false, :unless => :sense_organ_true?, :presence => { :message => " Debe Seleccionar opcion de Quirúrgicos" }, if: -> { required_for_step?(:c_revision_sistemas) }

  validates :skeletal_muscle_true, :unless => :skeletal_muscle_false?, :presence => { :message => " Debe Seleccionar opcion de Quirúrgicos" }, if: -> { required_for_step?(:c_revision_sistemas) }
  validates :skeletal_muscle_false, :unless => :skeletal_muscle_true, :presence => { :message => " Debe Seleccionar opcion de Quirúrgicos" }, if: -> { required_for_step?(:c_revision_sistemas) }

  validates :skin_and_appendages_true, :unless => :skin_and_appendages_false?, :presence => { :message => " Debe Seleccionar opcion de Quirúrgicos" }, if: -> { required_for_step?(:c_revision_sistemas) }
  validates :skin_and_appendages_false, :unless => :skin_and_appendages_true?, :presence => { :message => " Debe Seleccionar opcion de Quirúrgicos" }, if: -> { required_for_step?(:c_revision_sistemas) }











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


end
