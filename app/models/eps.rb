# == Schema Information
#
# Table name: epses
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Eps < ActiveRecord::Base
   has_many :clinic_histories
   has_many :patients


   def self.search(search)
    where("name like '%#{search}%'")
  end

end
