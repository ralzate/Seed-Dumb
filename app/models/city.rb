# == Schema Information
#
# Table name: cities
#
#  id         :integer          not null, primary key
#  country    :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class City < ActiveRecord::Base
   def self.search(search)
    where("country like '%#{search}%'  or name like '%#{search}%'")
  end

	
end
