# == Schema Information
#
# Table name: notas_progreso
#
#  id                  :integer          not null, primary key
#  nombre_paciente     :string
#  documento_paciente  :string
#  tipo_documento      :string
#  edad                :integer
#  registro_medico     :string
#  descripcion         :text
#  historia_clinica_id :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#


class NotaProgreso < ActiveRecord::Base
  belongs_to :historia_clinica

  def self.search(search)
    where("nombre_paciente like '%#{search}%'  or documento_paciente like '%#{search}%'")
  end



end
