# == Schema Information
#
# Table name: historias_clinicas
#
#  id                                   :integer          not null, primary key
#  primer_nombre                        :string
#  segundo_nombre                       :string
#  primer_apellido                      :string
#  segundo_apellido                     :string
#  email                                :string
#  tipo_documento                       :string
#  documento                            :string
#  fecha_nacimiento                     :date
#  genero                               :string
#  profesion                            :string
#  tipo_sangre                          :string
#  pais_codigo                          :string
#  nacionalidad                         :string
#  eps_id                               :integer
#  arl_id                               :integer
#  direccion                            :string
#  condicion                            :string
#  nombre_acompañante                   :string
#  relationship                         :string
#  phone                                :string
#  user_id                              :integer
#  city                                 :string
#  department                           :string
#  cove                                 :string
#  mobiel_service                       :string
#  aeropuerto_id                        :integer
#  type_service                         :string
#  paciente_id                          :integer
#  auxiliar                             :string
#  ubicacion                            :string
#  lugar_de_atencion                    :string
#  origin                               :string
#  destination                          :string
#  company                              :string
#  reason_for_consultation              :text
#  current_illness                      :text
#  neunatales_true                      :boolean
#  neunatales_false                     :boolean
#  neunatales_description               :text
#  patologicos_true                     :boolean
#  patologicos_false                    :boolean
#  patologicos_description              :text
#  quirurgicos_true                     :boolean
#  quirurgicos_false                    :boolean
#  quirurgicos_description              :text
#  farmacologicos_true                  :boolean
#  farmacologicos_false                 :boolean
#  farmacologicos_description           :text
#  alergicos_true                       :boolean
#  alergicos_false                      :boolean
#  alergicos_description                :text
#  toxicos_true                         :boolean
#  toxicos_false                        :boolean
#  toxicos_description                  :text
#  traumaticos_true                     :boolean
#  traumaticos_false                    :boolean
#  traumaticos_description              :text
#  hospitables_true                     :boolean
#  hospitables_false                    :boolean
#  hospitables_description              :text
#  atep_laboral_true                    :boolean
#  atep_laboral_false                   :boolean
#  atep_laboral_description             :text
#  familiar_true                        :boolean
#  familiar_false                       :boolean
#  familiar_description                 :text
#  inmunologicos_true                   :boolean
#  inmunologicos_false                  :boolean
#  inmunologios_description             :text
#  asociado_viajes_de_vuelo_true        :boolean
#  asociado_viajes_de_vuelo_false       :boolean
#  asociado_viajes_de_vuelo_description :text
#  menstrual_cycle                      :integer
#  gestational_age                      :string
#  eco                                  :string
#  menarquia                            :string
#  fecha_ultima_citologia               :date
#  fecha_ultima_mamografia              :date
#  fum                                  :integer
#  pregnancy_true                       :boolean
#  pregnancy_false                      :boolean
#  g                                    :string
#  p                                    :string
#  c                                    :string
#  a                                    :string
#  m                                    :string
#  v                                    :string
#  e                                    :string
#  cardiovascular_true                  :boolean
#  cardiovascular_false                 :boolean
#  cardiovascular_description           :text
#  respiratory_true                     :boolean
#  respiratory_false                    :boolean
#  respiratory_description              :text
#  abdominal_true                       :boolean
#  abdominal_false                      :boolean
#  abdominal_description                :text
#  genito_urinario_true                 :boolean
#  genito_urinario_false                :boolean
#  genito_urinario_description          :text
#  neurological_true                    :boolean
#  neurological_false                   :boolean
#  neurological_description             :text
#  mental_true                          :boolean
#  mental_false                         :boolean
#  mental_description                   :text
#  sense_organ_true                     :boolean
#  sense_organ_false                    :boolean
#  sense_organ_description              :string
#  skeletal_muscle_true                 :boolean
#  skeletal_muscle_false                :boolean
#  skeletal_muscle_description          :text
#  ta_mmgh_diastole                     :string
#  ta_mmgh_sistole                      :string
#  glucometria                          :string
#  heart_rate                           :string
#  breathing_frequency                  :string
#  sat_of_o_ambiente                    :string
#  sat_of_o_supplementary               :string
#  temperature                          :string
#  weight_in_kilograms                  :string
#  height_in_centimeters                :string
#  head_true                            :boolean
#  head_false                           :boolean
#  head_description                     :text
#  neck_true                            :boolean
#  neck_false                           :boolean
#  neck_description                     :text
#  rib_cage_true                        :boolean
#  rib_cage_false                       :boolean
#  rib_cage_description                 :text
#  heart_true                           :boolean
#  heart_false                          :boolean
#  heart_description                    :text
#  lungs_true                           :boolean
#  lungs_false                          :boolean
#  lungs_description                    :text
#  abdomen_true                         :boolean
#  abdomen_false                        :boolean
#  abdomen_description                  :text
#  genitourinary_true                   :boolean
#  genitourinary_false                  :boolean
#  genitourinary_description            :text
#  rectum_true                          :boolean
#  rectum_false                         :boolean
#  rectum_description                   :text
#  extremities_true                     :boolean
#  extremities_false                    :boolean
#  extremities_description              :text
#  skin_and_appendages_true             :boolean
#  skin_and_appendages_false            :boolean
#  skin_and_appendages_description      :text
#  piel_y_faneras2_true                 :boolean
#  piel_y_faneras2_false                :boolean
#  piel_y_faneras2_descripcion          :text
#  alteration                           :string
#  eye_opening                          :integer
#  verbal_answer                        :integer
#  motor_response                       :integer
#  other_signs                          :string
#  escala_de_glasgow                    :integer
#  analysis                             :text
#  print_diagnosed                      :text
#  plan_and_treatment                   :text
#  observations_recommendations         :text
#  evento_adverso                       :text
#  estado                               :boolean
#  glucometria1                         :integer
#  glucometria2                         :integer
#  electrocardiograma                   :text
#  created_at                           :datetime         not null
#  updated_at                           :datetime         not null
#



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

  validates :aeropuerto_id, :presence => { message: " Es un Campo Obligatorio" }
  validates :condicion, :presence => { message: " Es un Campo Obligatorio" }
  validates :type_service, :presence => { message: " Es un Campo Obligatorio" }
  validates :company, :presence => { message: " Es un Campo Obligatorio" }
  validates :lugar_de_atencion, :presence => { message: " Es un Campo Obligatorio" }
  validates :origin, :presence => { message: " Es un Campo Obligatorio" }
  validates :destination, :presence => { message: " Es un Campo Obligatorio" }
  validates :reason_for_consultation, :presence => { message: " Es un Campo Obligatorio" }
  validates :current_illness, :presence => { message: " Es un Campo Obligatorio" }






  cattr_accessor :form_steps do
    %w(a_historia_clinica b_antecedentes c_revision_sistemas d_examen_fisico e_impresion_diagnostica)
  end

  attr_accessor :form_step

  #validates :city, :department, presence: true, if: -> { required_for_step?(:identity) }
  #validates :cove, :mobiel_service, presence: true, if: -> { required_for_step?(:characteristics) }
  #validates :airport, presence: true, if: -> { required_for_step?(:instructions) }

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
      self.alteration.gsub!(/[\[\]\"]/, "") if attribute_present?("alteration")
      self.other_signs.gsub!(/[\[\]\"]/, "") if attribute_present?("other_signs")
   end


end
