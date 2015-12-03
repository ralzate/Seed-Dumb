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

require 'rails_helper'

RSpec.describe Diagnostico, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
