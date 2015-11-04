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
   def self.search(search)
    where("name like '%#{search}%'  or restrictions like '%#{search}%'")
  end

end
