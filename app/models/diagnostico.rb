# == Schema Information
#
# Table name: diagnosticos
#
#  id                  :integer          not null, primary key
#  familia             :string
#  codigo              :string
#  simbolo             :string
#  descripcion         :text
#  historia_clinica_id :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class Diagnostico < ActiveRecord::Base
  belongs_to :historia_clinica
end
