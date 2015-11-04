# == Schema Information
#
# Table name: arles
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Arl < ActiveRecord::Base
  def self.search(search)
    where("name like '%#{search}%'")
  end
end
