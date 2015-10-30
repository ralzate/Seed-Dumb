class Eps < ActiveRecord::Base
   has_many :clinic_histories
   has_many :patients
end